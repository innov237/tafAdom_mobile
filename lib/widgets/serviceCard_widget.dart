import 'package:flutter/material.dart';
import 'package:tafadom/pages/book_service_page.dart';

class ServiceCardWidget extends StatefulWidget {
  final response;
  final index;

  ServiceCardWidget({this.response, this.index});

  @override
  _ServiceCardWidgetState createState() => _ServiceCardWidgetState();
}

class _ServiceCardWidgetState extends State<ServiceCardWidget> {
  _openPage(page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openPage(
        BookService(
          responseData: widget.response[widget.index],
        ),
      ),
      child: Container(
        width: 160.0,
        child: Card(
          elevation: 0.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 100.0,
                  width: 160,
                  color: Colors.red,
                  child: Image.network(
                    widget.response[widget.index]['image_url'],
                    fit: BoxFit.cover,
                    width: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 2.0,
                  vertical: 4.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.response[widget.index]['sub_categorie_title'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "A partir de 10.000FCFA",
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
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
                    "Commander",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
