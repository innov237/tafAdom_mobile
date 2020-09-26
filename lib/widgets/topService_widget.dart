import 'package:flutter/material.dart';

class BuildTopServicesWidget extends StatefulWidget {
  @override
  _BuildTopServicesWidgetState createState() => _BuildTopServicesWidgetState();
}

class _BuildTopServicesWidgetState extends State<BuildTopServicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0),
      child: Container(
        width: 230.0,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100.0,
              width: double.infinity,
              child: Image.network(
                "https://previews.123rf.com/images/andreypopov/andreypopov1712/andreypopov171200196/92390238-african-male-plumber-fixing-sink-pipe-in-kitchen.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Déménagement",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text("à partir de 10.000 FCFA"),
            SizedBox(
              height: 6.0,
            ),
            Text(
              "deplacer un meuble, amanagement,...",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              color: Color(0xFFF7F7F7),
              height: 30.0,
              child: Center(
                child: Text(
                  "Commander maintenant",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
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
