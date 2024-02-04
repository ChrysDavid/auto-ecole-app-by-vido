import 'package:auto_ecole_app/models/list_pages_danger.dart';
import 'package:auto_ecole_app/view/emplacement_page_contenu.dart';
import 'package:auto_ecole_app/view/page_quiz.dart';
import 'package:flutter/material.dart';
import 'package:wave_linear_progress_indicator/wave_linear_progress_indicator.dart';

class DetailPage extends StatefulWidget {
  final int index;

  const DetailPage(this.index, {Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    final page = list_pages[widget.index];
    final contenus = page.contenus;

    // Enregistrez la dernière page dans une variable
    final Widget lastPage = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        elevation: 8.0,
        textStyle: const TextStyle(color: Colors.white),
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dernière Page',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageQuiz(widget.index),
                      ),
                    );
                  },
                  child: const Text(
                    "Commencer le Quiz",
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Mettre à plus tard"),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '${page.titre}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          WaveLinearProgressIndicator(
            value: (value) / contenus.length,
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  value = index;
                });
              },
              itemBuilder: (context, index) {
                if (index < contenus.length) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Material(
                      elevation: 8.0,
                      textStyle: const TextStyle(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 191, 205, 192)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: PagesContenuEmplacement(contenus[index]),
                        ),
                      ),
                    ),
                  );
                } else {
                  return lastPage;
                }
              },
              itemCount: contenus.length + 1,
            ),
          ),
        ],
      ),
    );
  }
}
