import 'package:auto_ecole_app/models/list_pages_danger.dart';
import 'package:auto_ecole_app/models/liste_page.dart';
import 'package:auto_ecole_app/models/wideget.dart';
import 'package:auto_ecole_app/provider/info_provider.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wave_linear_progress_indicator/wave_linear_progress_indicator.dart';

class PageQuiz extends StatefulWidget {
  const PageQuiz(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  State<PageQuiz> createState() => _PageQuizState();
}

class _PageQuizState extends State<PageQuiz> {
  int selectedResponseIndex = -1;
  int pageScroller = 0;
  int score = 0;
  late Reponses currentReponseG;
  bool isSelectedAllG = false;
  bool isSelectedAll = false;
  int index = 0;
  bool isObscure = false;
  List<Color> color = [];

  ProgressNotifier progressNotifier = ProgressNotifier(); // Create an instance


  PageController _pageController = PageController();
  ConfettiController confettiController = ConfettiController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void nextQuestion(int questionLength) {
    if (index == questionLength - 1) {
      confettiController.play();
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => ResultBox(
          result: score,
          questionLength: questionLength,
          onPressed: startOver,
        ),
      );
      Provider.of<ProgressNotifier>(context, listen: false).updateProgress(score/questionLength);

    } else {
      if (isSelectedAll) {
        setState(() {
          index++;
          isSelectedAll = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please select any option'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isSelectedAll = false;
    });
    Navigator.pop(context);
  }

  onPressed_BoutonSuivant(List<Quiz> quiz) {
    if (pageScroller < quiz.length && selectedResponseIndex != -1) {
      setState(() {
        isSelectedAll = true;
        isObscure = true;

        if (currentReponseG.estVrai == true) {
          score++;
          print(score);
        }

        for (int i = 0; i < quiz[pageScroller].reponses.length; i++) {
          final currentReponse = quiz[pageScroller].reponses[i];
          color.add(isSelectedAll
              ? currentReponse.estVrai == true
                  ? Colors.blue
                  : Colors.red
              : Colors.white);
        }
      });

      print(score);
      Future.delayed(Duration(seconds: 2), () {
        _pageController.nextPage(
          duration: Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please select any option'),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(vertical: 20.0),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final page = list_pages[widget.index];
    final quiz = page.quiz;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text("Page Quiz ${widget.index}"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: WaveLinearProgressIndicator(
              value: (pageScroller) / quiz.length.toDouble(),
              waveColor: Colors.orange,
              backgroundColor: Colors.grey[150],
              minHeight: 20,
            ),
          ),
          Expanded(
            flex: 11,
            child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: quiz.length + 1,
                onPageChanged: (index) {
                  nextQuestion(quiz.length);
                  setState(() {
                    selectedResponseIndex = -1;
                    isSelectedAll = false;
                    pageScroller = index;
                    isObscure = false;
                    color.clear();
                  });
                },
                itemBuilder: (context, index) {
                  if (index < quiz.length) {
                    final currentQuiz = quiz[index];
                    return Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(currentQuiz.images),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              isObscure? currentQuiz.noms : '............',
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                              
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ListView.builder(
                            itemCount: currentQuiz.reponses.length,
                            itemBuilder: (context, index) {
                              final currentReponse =
                                  currentQuiz.reponses[index];
                              final isPressedOne =
                                  selectedResponseIndex == index;
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 30, 10, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedResponseIndex = index;
                                      isSelectedAllG = isSelectedAll;
                                      currentReponseG = currentReponse;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: isPressedOne
                                          ? Border.all(
                                              color: Colors.blue, width: 2.0)
                                          : Border.all(
                                              color: Colors.white, width: 2.0),
                                    ),
                                    child: OptionCard(
                                      option: currentReponse.reponse,
                                      color: color.isNotEmpty
                                          ? color[index]
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Material(
                        elevation: 8.0,
                        textStyle: const TextStyle(color: Colors.white),
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ConfettiWidget(
                                  confettiController: confettiController,
                                  shouldLoop: true,
                                  numberOfParticles: 50,
                                  blastDirectionality: BlastDirectionality.explosive,
                                ),
                                Text(
                                  '🎉',
                                  style: TextStyle(fontSize: 150),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Félicitations!',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(onPressed: () => Navigator.popUntil(context, (route) => route.isFirst), child: Text('Contunuer la formation'),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                }),
          ),
          if(pageScroller != quiz.length)
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            onPressed: () => onPressed_BoutonSuivant(quiz),
            child: Text(
              '-------Suivant----------',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
