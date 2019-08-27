import 'package:flutter_web/material.dart';
import './responsivelayout.dart';
import 'dart:js' as js;

class AboutMePage extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMePage> {
  String wsp =
      "https://wa.me/593987868889?text=Hola!%20Revise%20tu%20web.%20¿Estas%20ahí?%20";
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 75.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ResponsiveLayout.isSmallScreen(context)
                              ? Column(
                                  children: <Widget>[
                                    ImageProfile(),
                                    SizedBox(
                                      height: 50,
                                    )
                                  ],
                                )
                              : Container(),
                          titleText("Hola!"),
                          titleText('Mi nombre es \nCristian Ronda'),
                          SizedBox(height: 50.0),
                          phaseText("Siempre buscando"),
                          phaseText("Siempre resolviendo"),
                          phaseText("Siempre programando"),
                          SizedBox(height: 50.0),
                          Container(
                            width: 500.0,
                            child: messageText(
                                "Todos tenemos preguntas, aveces no se necesita un consejo o experiencia. Sino quizá solo escucharte a ti mismo."),
                          ),
                          SizedBox(height: 50.0),
                          Text(
                            'Aprendiendo a toda hora',
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lobster'),
                          ),
                          SizedBox(height: 50.0),
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 30.0,
                                  width: 125.0,
                                  child: MaterialButton(
                                      onPressed: () {
                                        js.context.callMethod("open", [wsp]);
                                      },
                                      color: Colors.lightGreen,
                                      textColor: Colors.white,
                                      child: messageText("Escríbeme")),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      messageText("Llámame al "),
                                      SizedBox(height: 10.0),
                                      messageText("+593 98 786 8889")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    ResponsiveLayout.isMediumScreen(context)
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.05) //Valor para que la imagen se ajuste
                        : SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                    ResponsiveLayout.isSmallScreen(context)
                        ? Container(
                            width: 0,
                          )
                        : new ImageProfile(),
                    ResponsiveLayout.isMediumScreen(context)
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          )
                        : SizedBox(
                            width: 1,
                          )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Text messageText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Viga',
        fontSize: 16.0,
      ),
    );
  }

  Text phaseText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 50.0, fontWeight: FontWeight.w200, fontFamily: 'Viga'),
    );
  }

  Text titleText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'Viga'),
    );
  }
}

class ImageProfile extends StatelessWidget {
  const ImageProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    witdhScreen() {
      double width = (MediaQuery.of(context).size.width).toDouble() * 0.3;
      if (width > 1000) {
        return width = 250;
      } else {
        return width;
      }
    }

    return Stack(children: [
      Container(
          // color: Colors.blue,
          width: witdhScreen(),
          height: witdhScreen(),
          child: ClipOval(
              child: Image.network("assets/perfil.jpg", fit: BoxFit.cover)))
    ]);
  }
}
