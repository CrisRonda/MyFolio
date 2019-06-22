import 'package:flutter_web/material.dart';
import 'dart:js' as js;

class Files extends StatefulWidget {
  @override
  _FilesState createState() => _FilesState();
}

class _FilesState extends State<Files> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 50.0, top: 75.0),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        myOwnWidget(
            'https://github.com/CrisRonda/flutterFigma/raw/master/screenshots/Screenshot_20190301-224748.png',
            'Titulo',
            'subtitle',
            'https://www.midlandsderm.com/wp-content/uploads/2019/04/Rachel-R.-Person-760x760.jpg'),
      ],
    );
  }
}

Widget myOwnWidget(String MyImage, String title, String subtitle, String link) {
  return Container(
    height: 600.0,
    width: 500.0,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
            ),
            Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        fontFamily: 'Viga'),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              height: 450.0,
              width: 300.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(MyImage), fit: BoxFit.fitHeight)),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w200),
            ),
            MaterialButton(
              color: Colors.black,
              onPressed: () {
                js.context.callMethod("open", [link]);
              },
              child: Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Ver en Github",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Viga'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Container(
          width: 100,
        ),
      ],
    ),
  );
}
