// ignore: camel_case_types
class Pages_Contenus{
  String titre;
  String images;
  List<Contenus> contenus;
  List<Quiz> quiz;

  Pages_Contenus({required this.titre, required this.images, required this.contenus, required this.quiz});
}

class Contenus{
  String images;
  String noms;
  String description;

  Contenus({required this.images, required this.noms, required this.description});
}

class Quiz{
  String images;
  String noms;
  List <Reponses> reponses;

  Quiz({required this.images, required this.noms, required this.reponses});
}

class Reponses{
  bool estVrai;
  String reponse;

  Reponses({required this.reponse, required this.estVrai});
}