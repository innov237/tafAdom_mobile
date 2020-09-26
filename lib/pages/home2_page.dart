import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tafadom/config/palette.dart';
import 'package:tafadom/pages/request_page.dart';
import 'package:tafadom/router/router.dart';
import 'package:tafadom/widgets/serviceCard_widget.dart';
import 'package:tafadom/widgets/topService_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List serviceData = [
    {
      "categorie": "Bricolage",
      "categorie_description": "instalation, desinstalation, reparation",
      "sub_categorie": [
        {
          "sub_categorie_title": "réparation cuisinière à gaz",
          "image_url":
              "https://scontent.fnsi1-1.fna.fbcdn.net/v/t1.0-9/s1080x2048/87980186_484483435790290_6331209555866812416_o.jpg?_nc_cat=101&_nc_sid=8bfeb9&_nc_ohc=k53w4suZz3UAX9-mRBM&_nc_ht=scontent.fnsi1-1.fna&tp=7&oh=8368cefdbeb8460a468f6cb84a97ceca&oe=5F82FE22",
        },
        {
          "sub_categorie_title": "réparation cuisinière à gaz",
          "image_url":
              "https://img.freepik.com/photos-gratuite/nettoyage-surface-femme-laver-cuisiniere-gaz-gant-toilette-jaune-detergent_118478-897.jpg?size=626&ext=jpg",
        },
        {
          "sub_categorie_title": "cuisinière à gaz",
          "image_url":
              "https://books.openedition.org/pufr/docannexe/image/7300/img-5-small700.jpg",
        },
        {
          "sub_categorie_title": "appareils électroménagers",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpghttps://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
      ]
    },
    {
      "categorie": "Jardinage",
      "categorie_description": "instalation, desinstalation, reparation",
      "sub_categorie": [
        {
          "sub_categorie_title": "charpentier",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "plumbier",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "mecanicient",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "achat gaz",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
      ]
    },
    {
      "categorie": "Déménagement",
      "categorie_description": "instalation, desinstalation, reparation",
      "sub_categorie": [
        {
          "sub_categorie_title": "onglerie",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "maquilage",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "coiffure",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "massage",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
      ]
    },
    {
      "categorie": "Ménage",
      "categorie_description": "instalation, desinstalation, reparation",
      "sub_categorie": [
        {
          "sub_categorie_title": "onglerie",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "maquilage",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "coiffure",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
        {
          "sub_categorie_title": "massage",
          "image_url":
              "https://image.freepik.com/vecteurs-libre/site-web-du-service-domicile_1893-2154.jpg",
        },
      ]
    },
    {
      "categorie": "Beauté et esthétique",
      "categorie_description": "instalation, desinstalation, reparation",
      "sub_categorie": [
        {
          "sub_categorie_title": "Nétoyage et pose ongle",
          "image_url":
              "https://kantobeautespa.files.wordpress.com/2015/10/onglerie-antananarivo.jpg",
        },
        {
          "sub_categorie_title": "Maquillage express a domicile",
          "image_url":
              "https://static.dreamland.be/wcsstore/ColruytB2CCAS/JPG/JPG/646x1000/std.lang.all/86/21/asset-1778621.jpg",
        },
        {
          "sub_categorie_title": "coiffure homme et femme",
          "image_url":
              "https://www.ville-courbevoie.fr/fileadmin/user_upload/atelier-coiffure-africaine-courbevoie.jpeg",
        },
        {
          "sub_categorie_title": "massage pour homme et femme",
          "image_url":
              "https://vudaf.com/wp-content/uploads/2019/05/homme-massage-intime.jpg",
        },
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quel service\nrecherchez-vous ?",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Palette.primaryColor,
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                "assets/images/logo.png",
                                height: 50.0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 40.0,
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100.0),
                                    bottomLeft: Radius.circular(100.0),
                                  ),
                                  child: Container(
                                    color: Color(0xFFF1F3F2),
                                    height: 40.0,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Icon(Icons.search),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("Essayez ménage")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100.0),
                                  bottomRight: Radius.circular(100.0),
                                ),
                                child: Container(
                                  width: 50.0,
                                  height: 40.0,
                                  color: Palette.primaryColor,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Les plus solicités",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          height: 230.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return BuildTopServicesWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Toutes les catégories",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: ListView.builder(
                        itemCount: serviceData.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index1) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      serviceData[index1]["categorie"],
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color(0xFF2F1C6A).withOpacity(0.8),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black.withOpacity(0.2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 200,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: serviceData[index1]
                                            ['sub_categorie']
                                        .length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return ServiceCardWidget(
                                        response: serviceData[index1]
                                            ["sub_categorie"],
                                        index: index,
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Container(
            height: 56.0,
            color: Color(0xFFEDEDED),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text("Accueil"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.book,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text("Catégories"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => PageRouter.pushPage(RequestPage(), context),
                    child: Column(
                      children: [
                        Icon(
                          Icons.list_alt,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        Text(
                          "Demandes",
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text("menu"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
