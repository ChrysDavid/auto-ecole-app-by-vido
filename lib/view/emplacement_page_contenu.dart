import 'package:auto_ecole_app/models/liste_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PagesContenuEmplacement extends StatelessWidget {
  final Contenus contenu;

  PagesContenuEmplacement(this.contenu, {Key? key}) : super(key: key);

  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    Future speak(String text) async {
      await flutterTts.setLanguage("fr-FR");
      await flutterTts.setPitch(1.0);
      await flutterTts.speak(text);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(contenu.images),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                contenu.noms,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Description ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 157, 157, 157),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  IconButton(
                    onPressed: () => speak(contenu.description),
                    icon: const Icon(
                      Icons.volume_up,
                      color: Colors.lightBlue,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: SingleChildScrollView(
                child: Text(
                  contenu.description,
                  style: const TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
