import 'package:flutter_web/material.dart';
import 'dart:js' as js;

import 'package:hello_world/responsivelayout.dart';

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
            context,
            'https://github.com/CrisRonda/flutterFigma/raw/master/screenshots/Screenshot_20190301-224748.png',
            'Museum Figma',
            'Proyecto Flutter',
            'https://www.midlandsderm.com/wp-content/uploads/2019/04/Rachel-R.-Person-760x760.jpg'),
        myOwnWidget(
            context,
            'data:image/png;base64,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',
            'Asistente de Google',
            'Asistente de Google y Firebase ',
            'https://github.com/CrisRonda/Push-notifications-and-Firebase'),
        myOwnWidget(
            context,
            'https://elsemanario.com/wp-content/uploads/2016/07/Logo-Maps2.png',
            'Google Maps',
            'Flutter & Google Maps',
            'https://github.com/CrisRonda/flutterMapTest'),
        myOwnWidget(
            context,
            'https://github.com/CrisRonda/rnFigma/raw/master/screenshots/001.png',
            'Museum Figma',
            'Proyecto en React Native',
            'https://github.com/CrisRonda/rnFigma'),
        myOwnWidget(
            context,
            'data:image/jpeg;base64,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',
            'Flutter Web',
            'Este proyecto 😉',
            'https://github.com/CrisRonda/MyFolio')
      ],
    );
  }
}

Widget myOwnWidget(BuildContext context, String MyImage, String title,
    String subtitle, String link) {
  double heightSize = 16;
  ResponsiveLayout.isMediumScreen(context)
      ? heightSize = 700
      : heightSize = 400;
  return Container(
    height: 700,
    width: 500,
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
              height: heightSize,
              width: 400.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(MyImage), fit: BoxFit.contain)),
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Viga',
                  fontSize: 16),
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
