import 'package:flutter/material.dart';
import 'package:tafadom/widgets/serviceCard_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

  List<Widget> items = [
    Image.network(
      "https://thestudio-cm.com/wp-content/uploads/2018/01/Eid-Mubarak_Promo-2-the-studio-400x267.png",
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image.network(
      "https://lh3.googleusercontent.com/proxy/ab7D4D86Ip2zCVJWbj5qZyI0CWtJFSNk6CDFdt56ibt0A-KjLzOUcV384bibDQ_ALGhrRFOivPZcuBeNUL59fDkO6fx9iBbyKuDS-7dUATs",
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TafAdom",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.notification_important,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 180.0,
                      width: double.infinity,
                      child: CarouselSlider(
                        items: items,
                        options: CarouselOptions(
                          height: 180,
                          viewportFraction: 1.0,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                      ),
                      child: Card(
                        color: Colors.white.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 13.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rechercher un service",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.black.withOpacity(0.8),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: ListView.builder(
                          itemCount: serviceData.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index1) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                          color: Color(0xFF2F1C6A)
                                              .withOpacity(0.8),
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
                                    height: 160,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 3.0,
                left: 2.0,
                right: 2.0,
              ),
              child: Card(
                elevation: 4.0,
                margin: EdgeInsets.all(1),
                child: Container(
                  height: 57.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            Text(
                              "Accueil",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.shopping_basket,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            Text(
                              "Pagnier",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            Text(
                              "Promo",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.account_box,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            Text(
                              "Profil",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
