import 'package:auto_ecole_app/models/liste_page.dart';

// ignore: non_constant_identifier_names
List<Pages_Contenus> list_pages = [
  Pages_Contenus(
    titre: "Danger",
    images: "assets/images/panneau-signalisation.png",
    contenus: [
      Contenus(
          images: "assets/images/virage_a_droite.png",
          noms: "Virage dangereux à droite",
          description:
              "Avertissement de la présence imminent d'un virage dangereux à droite sur la route, incitant les conducteurs à réduire leur vitesse et à être attentifs aux conditions de conduite à venir."),
      // Contenus(
      //     images: "assets/images/virage_a_gauche.png",
      //     noms: "Virage dangereux à gauche",
      //     description:
      //         "Avertissement de la présence imminent d'un virage dangereux à gauche sur la route, incitant les conducteurs à réduire leur vitesse et à être attentifs aux conditions de conduite à venir."),
      // Contenus(
      //     images: "assets/images/succession_virage_droit.png",
      //     noms: "Succession de virages dont le premier à droite",
      //     description:
      //         "Signalisation indiquant une séquence de virages à venir, avec le premier virage dirigé vers la droite. Les conducteurs sont encouragés à ralentir et à anticiper les virages successifs pour assurer une conduite sécurisée."),
      // Contenus(
      //     images: "assets/images/succession_virage_gauche.png",
      //     noms: "Succession de virages dont le premier à gauche",
      //     description:
      //         "Signalisation indiquant une séquence de virages à venir, avec le premier virage dirigé vers la gauche. Les conducteurs sont encouragés à ralentir et à anticiper les virages successifs pour assurer une conduite sécurisée."),
      // Contenus(
      //     images: "assets/images/cassis_ou_dosdane.png",
      //     noms: "Cassis ou dos-d'âne",
      //     description:
      //         "Dispositif de sécurité routière destiné à ralentir la circulation, généralement présenté comme une série de bosses sur la chaussée."),
      // Contenus(
      //     images: "assets/images/dosdane.png",
      //     noms: "Ralentisseur de type dos-d'âne",
      //     description:
      //         "Structure routière conçue pour forcer les conducteurs à réduire leur vitesse, similaire à un dos-d'âne classique."),
      // Contenus(
      //     images: "assets/images/Retressi_principale.png",
      //     noms: "Chaussée rétrécie principale",
      //     description:
      //         "Signalisation indiquant que la voie principale est réduite en largeur, nécessitant une adaptation de la conduite pour garantir la sécurité."),
      // Contenus(
      //     images: "assets/images/retressi_droite.png",
      //     noms: "Chaussée rétrécie par la droite",
      //     description:
      //         "Panneau signalant un rétrécissement de la chaussée du côté droit, demandant aux conducteurs de céder la priorité aux véhicules en sens inverse."),
      // Contenus(
      //     images: "assets/images/retressi_gauche.png",
      //     noms: "Chaussée rétrécie par la gauche",
      //     description:
      //         "Indication de réduction de la largeur de la chaussée du côté gauche, nécessitant une vigilance accrue et une adaptation de la conduite."),
      // Contenus(
      //     images:
      //         "assets/images/panneau-chaussee-particulierement-glissante.png",
      //     noms: "Chaussée particulièrement glissante",
      //     description:
      //         "Avertissement aux conducteurs que la chaussée peut être particulièrement glissante, les incitant à ajuster leur vitesse et à prendre des précautions supplémentaires."),
      // Contenus(
      //     images: "assets/images/pont-mobil.png",
      //     noms: "Pont mobile",
      //     description:
      //         "Signalisation indiquant la présence d'un pont mobile, suggérant aux conducteurs de rester attentifs et de suivre les éventuelles restrictions de passage."),
      // Contenus(
      //     images: "assets/images/passage_garder.png",
      //     noms: "Passage à niveau gardé muni de barrières",
      //     description:
      //         "Avertissement de la présence d'un passage à niveau, avec des barrières qui sont manuellement activées lors du passage des trains, nécessitant une halte obligatoire."),
      // Contenus(
      //     images: "assets/images/passage_non_garder.png",
      //     noms: "Passage à niveau non gardé sans barrières ni demi-barrières",
      //     description:
      //         "Avertissement de la présence d'un passage à niveau sans surveillance, dépourvu de barrières ou demi-barrières automatiques, nécessitant une attention particulière avant de traverser."),
      // Contenus(
      //     images: "assets/images/traversée_tramways.png",
      //     noms: "Traversée de voies de tramways",
      //     description:
      //         "Indication de la traversée de voies de tramways, incitant les conducteurs à être vigilants et à respecter les règles spécifiques à la présence de tramways."),
      // Contenus(
      //     images: "assets/images/attention_enfants.png",
      //     noms: "Attention aux enfants",
      //     description:
      //         "Avertissement signalant la possibilité de la présence d'enfants sur la route, incitant à une conduite prudente et à une attention accrue."),
      // Contenus(
      //     images: "assets/images/passage-pietons.png",
      //     noms: "Attention au piéton",
      //     description:
      //         "Avertissement de la présence de piétons sur la route, encourageant les conducteurs à être attentifs et à céder le passage lorsque nécessaire."),
      // Contenus(
      //     images: "assets/images/danger_inconue.png",
      //     noms: "Danger non précisé",
      //     description:
      //         "Panneau indiquant la possibilité d'un danger non spécifié, incitant à une conduite prudente et à la vigilance sur la route."),
      // Contenus(
      //     images: "assets/images/domestique_boeuf.png",
      //     noms: "Attention aux animaux domestiques de type boeuf",
      //     description:
      //         "Avertissement de la présence possible de boeufs sur la route, incitant à une conduite prudente et à prendre des précautions spécifiques."),
      // Contenus(
      //     images: "assets/images/domestique_mouton.png",
      //     noms: "Attention aux animaux domestiques de type mouton",
      //     description:
      //         "Avertissement de la présence possible de moutons sur la route, incitant à une conduite prudente et à prendre des précautions spécifiques."),
      // Contenus(
      //     images: "assets/images/animaux_sauvages.png",
      //     noms: "Attention aux animaux sauvages",
      //     description:
      //         "Avertissement signalant la présence possible d'animaux sauvages sur la route, incitant à une conduite prudente et à la vigilance."),
      // Contenus(
      //     images: "assets/images/attention_cavalier.png",
      //     noms: "Attention au cavalier",
      //     description:
      //         "Avertissement de la possibilité de cavaliers sur la route, incitant à une conduite prudente et à prendre des précautions spécifiques."),
      // Contenus(
      //     images: "assets/images/descente.png",
      //     noms: "Descente dangereuse",
      //     description:
      //         "Signalisation d'une descente potentiellement dangereuse, incitant à ralentir et à adapter la vitesse en descente pour garantir la sécurité."),
      // Contenus(
      //     images: "assets/images/doule_sens.png",
      //     noms: "Circulation dans les deux sens",
      //     description:
      //         "Avertissement de la présence de circulation dans les deux sens sur la route, incitant à une conduite prudente et au respect des règles de priorité."),
      // Contenus(
      //     images: "assets/images/chutte_piere.png",
      //     noms: "Risque de chute de pierres",
      //     description:
      //         "Avertissement signalant un risque potentiel de chute de pierres sur la route, incitant à la prudence et à la vigilance."),
      // Contenus(
      //     images: "assets/images/quai_bairge.png",
      //     noms: "Débouché sur un quai ou une berge",
      //     description:
      //         "Indication de la possibilité d'un débouché sur un quai ou une berge, incitant à une conduite prudente et à la vigilance aux intersections."),
      // Contenus(
      //     images: "assets/images/circliste.png",
      //     noms: "Attention aux cyclistes venant par la droite",
      //     description:
      //         "Avertissement de la présence possible de cyclistes venant de la droite, incitant à être attentif et à céder la priorité lorsque nécessaire."),
      // Contenus(
      //     images: "assets/images/aerien.png",
      //     noms: "Danger aérien",
      //     description:
      //         "Avertissement signalant un danger potentiel d'origine aérienne, incitant à une conduite prudente et à la vigilance face aux risques spécifiques évoqués."),
      // Contenus(
      //     images: "assets/images/vent_latteral.png",
      //     noms: "Vent latéral",
      //     description:
      //         "Avertissement de la présence possible de vents latéraux, incitant les conducteurs à être attentifs et à adapter leur conduite en fonction des conditions météorologiques pour assurer une conduite sécurisée."),
    ],
    quiz: [
      Quiz(
        images: "assets/images/virage_a_gauche.png",
        noms: "noms1",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: true),
          Reponses(reponse: "reponse2", estVrai: false),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/panneau-signalisation.png",
        noms: "noms2",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: true),
          Reponses(reponse: "reponse2", estVrai: false),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/doule_sens.png",
        noms: "noms3",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: true),
          Reponses(reponse: "reponse2", estVrai: true),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/virage_a_gauche.png",
        noms: "noms1",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: false),
          Reponses(reponse: "reponse2", estVrai: true),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/panneau-signalisation.png",
        noms: "noms2",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: false),
          Reponses(reponse: "reponse2", estVrai: false),
          Reponses(reponse: "reponse3", estVrai: true),
        ],
      ),
      Quiz(
        images: "assets/images/doule_sens.png",
        noms: "noms3",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: false),
          Reponses(reponse: "reponse2", estVrai: true),
          Reponses(reponse: "reponse3", estVrai: true),
        ],
      ),
    ],
  ),

  Pages_Contenus(
    titre: "Danger",
    images: "assets/images/panneau-signalisation.png",
    contenus: [
      Contenus(
          images: "assets/images/virage_a_droite.png",
          noms: "Virage dangereux à droite",
          description:
              "Avertissement de la présence imminent d'un virage dangereux à droite sur la route, incitant les conducteurs à réduire leur vitesse et à être attentifs aux conditions de conduite à venir."),
    ],
    quiz: [
      Quiz(
        images: "assets/images/virage_a_gauche.png",
        noms: "noms1",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: true),
          Reponses(reponse: "reponse2", estVrai: false),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/panneau-signalisation.png",
        noms: "noms2",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: true),
          Reponses(reponse: "reponse2", estVrai: false),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/doule_sens.png",
        noms: "noms3",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: true),
          Reponses(reponse: "reponse2", estVrai: true),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/virage_a_gauche.png",
        noms: "noms1",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: false),
          Reponses(reponse: "reponse2", estVrai: true),
          Reponses(reponse: "reponse3", estVrai: false),
        ],
      ),
      Quiz(
        images: "assets/images/panneau-signalisation.png",
        noms: "noms2",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: false),
          Reponses(reponse: "reponse2", estVrai: false),
          Reponses(reponse: "reponse3", estVrai: true),
        ],
      ),
      Quiz(
        images: "assets/images/doule_sens.png",
        noms: "noms3",
        reponses: [
          Reponses(reponse: "reponse1", estVrai: false),
          Reponses(reponse: "reponse2", estVrai: true),
          Reponses(reponse: "reponse3", estVrai: true),
        ],
      ),
    ],
  ),
  
  // Pages_Contenus(
  //   titre: "Direction",
  //   images: "",
  //   contenus: [
  //     Contenus(
  //         images: "",
  //         noms: "Panneaux de position comportant une indication de distance",
  //         description:
  //             "Ces panneaux vous donnent des informations sur la distance vers un endroit particulier sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneaux de position comportant une indication de distance",
  //         description:
  //             "Ces panneaux continuent de vous informer sur la distance vers des lieux spécifiques sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneaux de position comportant une indication de distance",
  //         description:
  //             "Encore des panneaux vous disant combien de kilomètres vous avez à parcourir jusqu'à certains endroits sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneaux de position comportant pas d'indication de distance",
  //         description:
  //             "Ici, ces panneaux ne vous donnent pas d'infos sur la distance, juste sur votre position générale sur la route."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneaux de position destiné à signaler les lieux-dits et les fermes comportant ou non une indication de distance",
  //         description:
  //             "Ces panneaux vous indiquent des endroits spécifiques ou des fermes, et parfois, la distance restante pour les atteindre."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation avancée de sortie non numérotée",
  //         description:
  //             "Ce panneau vous avertit de la sortie à venir sur l'autoroute, mais elle n'a pas de numéro."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation avancée de sortie numérotée",
  //         description:
  //             "Ce panneau vous informe d'une sortie à venir sur l'autoroute, et elle a un numéro associé."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation avancée de sortie non numérotée",
  //         description:
  //             "Comme le précédent, ce panneau annonce une sortie sur l'autoroute, mais sans numéro spécifique."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation avancée de bifurcation autoroutière",
  //         description:
  //             "Ce panneau vous prévient d'un endroit où l'autoroute se sépare en deux directions."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation avancée d'aire sur route",
  //         description:
  //             "Ce panneau indique qu'il y a une aire de repos sur la route à proximité."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation avancée d'aire sur route",
  //         description:
  //             "Encore un panneau qui vous dit qu'il y a une aire de repos sur la route à proximité."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation avancée d'aire sur autoroute",
  //         description:
  //             "Ce panneau vous informe qu'il y a une aire de repos sur l'autoroute à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies de sortie numérotée",
  //         description:
  //             "Ce panneau vous dit dans quelle voie vous devez vous trouver pour prendre la sortie numérotée à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies de sortie non numérotée",
  //         description:
  //             "Ce panneau vous guide sur la voie à prendre pour une sortie non numérotée à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies de bifurcation autoroutière",
  //         description:
  //             "Ce panneau vous indique quelle voie prendre lorsque l'autoroute se divise en deux."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies de sortie numérotée",
  //         description:
  //             "Encore un panneau qui vous guide dans la voie pour prendre une sortie numérotée."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies de sortie non numérotée",
  //         description:
  //             "Cet autre panneau vous indique la voie à suivre pour une sortie non numérotée à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies de bifurcation autoroutière",
  //         description:
  //             "Vous serez informé par ce panneau sur la voie à prendre lorsque l'autoroute se divise."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies d'aire sur route",
  //         description:
  //             "Cet autre panneau vous guide sur la voie à prendre pour accéder à une aire de repos sur la route."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation avancée d'affectation de voies d'aire sur autoroute",
  //         description:
  //             "Ce panneau vous informe sur la voie à emprunter pour accéder à une aire de repos sur l'autoroute."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation de sortie numérotée",
  //         description:
  //             "Cet avertissement vous informe de l'approche d'une sortie numérotée sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation de sortie non numérotée",
  //         description:
  //             "Cet avertissement vous alerte sur la proximité d'une sortie non numérotée sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation de bifurcation autoroutière",
  //         description:
  //             "Cet avertissement vous indique qu'une bifurcation sur l'autoroute est à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation diagrammatique des carrefours complexes",
  //         description:
  //             "Ce panneau vous donne des indications anticipées sur les intersections complexes à venir sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation diagrammatique à sens giratoires",
  //         description:
  //             "Cet avertissement vous informe sur l'approche de ronds-points ou de carrefours giratoires avec des indications visuelles."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation diagrammatique à sens giratoires",
  //         description:
  //             "Un autre panneau qui vous prévient de l'approche de ronds-points ou de carrefours giratoires avec des informations visuelles."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation diagrammatique à sens giratoires",
  //         description:
  //             "Encore un avertissement vous indiquant que des ronds-points ou des carrefours giratoires sont à venir, avec des indications visuelles."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation courante des carrefours",
  //         description:
  //             "Ce panneau vous prévient de l'approche de carrefours ordinaires sur la route."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation d'affectation de voies de sortie numérotée",
  //         description:
  //             "Cet avertissement vous informe sur la voie à prendre pour accéder à une sortie numérotée à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation d'affectation de voies de sortie non numérotée",
  //         description:
  //             "Cet avertissement vous informe sur la voie à prendre pour accéder à une sortie non numérotée à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation d'affectation de voies de bifurcation autoroutière",
  //         description:
  //             "Ce panneau vous indique quelle voie prendre lorsque l'autoroute se sépare en deux."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation d'affectation de voies de sortie numérotée",
  //         description:
  //             "Encore un avertissement vous informe sur la voie à prendre pour accéder à une sortie numérotée à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation d'affectation de voies de sortie non numérotée",
  //         description:
  //             "Cet autre panneau vous guide sur la voie à suivre pour une sortie non numérotée à venir."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation d'affectation de voies de bifurcation autoroutière",
  //         description:
  //             "Vous serez informé par ce panneau sur la voie à prendre lorsque l'autoroute se divise."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau d'avertissement de sortie simple",
  //         description:
  //             "Cet avertissement vous signale la proximité d'une sortie simple sur la route."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau d'avertissement de sortie simple donnant également accès à une aire de service ou de repos",
  //         description:
  //             "Ce panneau vous avertit d'une sortie simple et vous indique également l'accès à une aire de service ou de repos."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau d'avertissement de sortie rapprochées",
  //         description:
  //             "Cet avertissement vous informe sur la proximité de plusieurs sorties rapprochées sur la route."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau d'avertissement de sortie rapprochées, dont l'une donne également accès à une aire de service ou de repos",
  //         description:
  //             "Ce panneau vous alerte sur des sorties rapprochées, et l'une d'elles vous donne également accès à une aire de service ou de repos."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau d'avertissement de bifurcation autoroutière simple",
  //         description:
  //             "Ce panneau vous avertit de l'approche d'une bifurcation sur l'autoroute de manière simple."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau d'avertissement de bifurcation autoroutière et de sorties rapprochées",
  //         description:
  //             "Cet avertissement vous signale une bifurcation sur l'autoroute ainsi que des sorties rapprochées."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau d'avertissement de sortie avec affectation de voies",
  //         description:
  //             "Ce panneau vous alerte sur une sortie à venir et vous indique quelle voie prendre pour y accéder."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau d'avertissement de sortie donnant également accès à une aire de service ou de repos, avec affectation de voie",
  //         description:
  //             "Cet avertissement vous signale une sortie prochaine et vous guide sur la voie à prendre, avec également l'accès à une aire de service ou de repos."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau d'avertissement de bifurcation autoroutière avec affectation autoroutière avec affectation de voies",
  //         description:
  //             "Ce panneau vous alerte sur une bifurcation autoroutière à venir et vous indique quelles voies emprunter."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de confirmation courante utilisé sur route",
  //         description:
  //             "Ce panneau confirme simplement votre itinéraire lorsque vous êtes sur une route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de confirmation courante utilisé sur autoroute",
  //         description:
  //             "Ce panneau confirme simplement votre itinéraire lorsque vous êtes sur une autoroute."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de confirmation de filante utilisé sur route à chaussées séparées",
  //         description:
  //             "Ce panneau confirme votre itinéraire lorsque vous êtes sur une route à chaussées séparées."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de confirmation de filante utilisé sur autoroute",
  //         description:
  //             "Ce panneau confirme votre itinéraire lorsque vous êtes sur une autoroute."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de confirmation de filante avec flèche(s) d'affectation verticale(s), utilisé sur autoroute",
  //         description:
  //             "Ce panneau confirme votre itinéraire avec des flèches verticales d'affectation lorsque vous êtes sur une autoroute."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de confirmation de filante avec flèche(s) d'affectation coudée(s), utilisé sur autoroute",
  //         description:
  //             "Ce panneau confirme votre itinéraire avec des flèches d'affectation coudées lorsque vous êtes sur une autoroute."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de confirmation de la prochaine sortie",
  //         description:
  //             "Ce panneau confirme simplement la proximité de la prochaine sortie sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau d'annonce de la prochaine bifurcation autoroutière",
  //         description:
  //             "Ce panneau vous informe de l'approche d'une bifurcation sur l'autoroute."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de confirmation courante de bifurcation autoroutière",
  //         description:
  //             "Ce panneau confirme simplement la bifurcation autoroutière actuelle."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de fin d'itinéraire",
  //         description:
  //             "Ce panneau indique la fin de votre itinéraire actuel sur la route."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de fin d'itinéraire",
  //         description:
  //             "Ce panneau indique également la fin de votre itinéraire actuel, mais utilisé dans un autre contexte ou emplacement."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation complémentaire de sortie. Il est destiné à informer l'usager des destinations desservies par la prochaine sortie, pour lesquelles la continuité du jalonnement n'est plus assurée",
  //         description:
  //             "Ce panneau complémentaire vous informe des destinations desservies par la prochaine sortie, pour lesquelles la continuité du jalonnement n'est plus assurée."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de signalisation complémentaire des différents sorties desservant une agglomération",
  //         description:
  //             "Ce panneau complémentaire vous donne des informations supplémentaires sur les différentes sorties desservant une agglomération."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de présignalisation complémentaire de sortie",
  //         description:
  //             "Ce panneau complémentaire à la présignalisation vous donne des informations supplémentaires sur la prochaine sortie."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation complémentaire de bifurcation autoroutière",
  //         description:
  //             "Ce panneau complémentaire à la présignalisation vous donne des informations supplémentaires sur la prochaine bifurcation autoroutière."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation complémentaire de bifurcation autoroutière comportant des numéros d'autoroutes",
  //         description:
  //             "Ce panneau complémentaire à la présignalisation vous donne des informations supplémentaires sur la prochaine bifurcation autoroutière, y compris les numéros d'autoroutes concernées."),
  //     Contenus(
  //         images: "",
  //         noms:
  //             "Panneau de présignalisation complémentaire de bifurcation autoroutière ne comportant pas de numéros d'autoroutes",
  //         description:
  //             "Ce panneau complémentaire à la présignalisation vous donne des informations supplémentaires sur la prochaine bifurcation autoroutière, sans inclure les numéros d'autoroutes."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation complémentaire d'itinéraire",
  //         description:
  //             "Ce panneau complémentaire vous donne des informations supplémentaires sur votre itinéraire actuel."),
  //     Contenus(
  //         images: "",
  //         noms: "Panneau de signalisation complémentaire d'itinéraire",
  //         description:
  //             "Ce panneau complémentaire vous fournit des informations supplémentaires sur votre itinéraire actuel."),
  //   ],
  //   quiz: [
  //     Quiz(
  //       images: "",
  //       noms: "",
  //       reponses: [
  //         Reponses(reponse: "", estVrai: false),
  //         Reponses(reponse: "", estVrai: true),
  //         Reponses(reponse: "", estVrai: false),
  //       ],
  //     ),
  //   ],
  // ),
];