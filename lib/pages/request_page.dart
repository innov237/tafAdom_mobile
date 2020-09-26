import 'package:flutter/material.dart';
import 'package:tafadom/config/palette.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Palette.primaryColor,
          ),
          title: Text(
            "Mes demandes",
            style: TextStyle(color: Palette.primaryColor),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prestataire",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Palette.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            height: 90.0,
                            width: 90.0,
                            child: Image.asset(
                              "assets/images/profil.jpg",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cedric Djiele",
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Text("Age: 25ans"),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Text("Plombier"),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: RaisedButton(
                            onPressed: null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            disabledColor: Palette.secondaryColor,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Appeler",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: RaisedButton(
                            onPressed: null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            disabledColor: Palette.secondaryColor,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Message",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Divider(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Details sur le service",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Palette.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.terrain),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Reparation colone de douche",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today,
                                          size: 18.0,
                                        ),
                                        Text("Date"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text("12 jouin 2020"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timer,
                                          size: 18.0,
                                        ),
                                        Text("Heure"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text("12h30"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text("Localisation"),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("Yaoundé-Tsinga fecafoot"),
                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),
                          ListTile(
                            title: Text("Signaler un probleme"),
                            contentPadding: EdgeInsets.all(0.0),
                            subtitle: Text(
                              "Rencontrez vous des problemes avec le prestaire ?",
                            ),
                            trailing: Image.asset(
                              "assets/images/agent.png",
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            height: 40.0,
                            child: Center(
                              child: Text(
                                "Signalez un problème",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            color: Colors.red,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
