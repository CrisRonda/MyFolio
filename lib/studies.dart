import 'package:flutter_web/material.dart';
import 'dart:js' as js;
import './responsivelayout.dart';

class Studies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = (MediaQuery.of(context).size.width).toDouble();
    var separator = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 2,
        color: Colors.black,
        width: widthScreen * 0.95,
      ),
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: EdgeInsets.only(left: 50.0, top: 75.0),
        children: <Widget>[
          Column(
            children: <Widget>[
              textTitle("EDUCACION"),
              rowDescription(
                widthScreen,
                "Bachiller Físico-Matemático, Instituto Tecnológico Benito Juárez",
                "2006-2012",
                "",
              ),
              separator,
              rowDescription(
                  widthScreen,
                  "Ingeniería Electrónica y Redes de Información, Escuela Politécnica Nacional",
                  "2012-2019",
                  "data:image/png;base64,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"),
              SizedBox(
                height: 50,
              ),
              textTitle("EXPERIENCIA"),
              rowDescriptionPasantia(
                  widthScreen,
                  "Pasante, ETISTELL SA",
                  "2018/09/03-2018/09/28",
                  "http://www.etistel.com/_/rsrc/1481756620978/config/customLogo.gif?revision=3",
                  [
                    "- Site Survey y documentación respectiva.",
                    "- Planificación de materiales para instalaciones de equipos.",
                    "- Inventario de materiales de networking."
                  ],
                  context),
              separator,
              rowDescriptionPasantia(
                  widthScreen,
                  "Pasante, Empresa Eléctrica Quito",
                  "2018/03/12-2018/04/10",
                  "data:image/png;base64,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",
                  [
                    "- Soporte técnico a usuarios y equipos de la intranet empresarial.",
                    "- Testing de software de administración SolarWinds.",
                    "- Instalación de cableado y equipos inalámbricos.",
                    "- Administración y configuración de equipos de networking."
                  ],
                  context),
              separator,
              rowDescriptionPasantia(
                  widthScreen,
                  "Pasante, Centro de Educación Contínua (EPN) ",
                  "2017/09/04-2018/10/06",
                  "https://virtualepn.edu.ec/images/logo.png",
                  [
                    "- Instalación y administración de aulas en Moodle.",
                    "- Instalación de herramientas y servicios DNS, WEB, MAIL.",
                    "- Análisis de bases de datos con Orange Data."
                  ],
                  context),
              SizedBox(
                height: 50,
              ),
              textTitle("REFERENCIAS"),
              textReference(
                  "Ing. Iván Mullo, Centro de Educación Continua (EPN)",
                  "09 8226 7651 ",
                  " cmullo@cec-epn.edu.ec"),
              separator,
              textReference("Ing. Álvaro Cadena, Empresa Eléctrica Quito",
                  "02 3964 700 ", "alcadena@eeq.com.ec"),
              separator,
              textReference("Ruaj Romero", "09 6034 7957", "ruaj94@gmail.com"),
              SizedBox(
                height: 150,
              ),
            ],
          )
        ],
      ),
    );
  }

  Column textReference(String name, String number, String mail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(name,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: "Viga",
                fontWeight: FontWeight.bold)),
        Row(
          children: <Widget>[
            Text(number + " |",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Viga",
                )),
            Text(mail,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Viga",
                )),
          ],
        )
      ],
    );
  }

  Text textTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'Viga',
          fontWeight: FontWeight.bold,
          fontSize: 32),
    );
  }

  Row rowDescription(
      double widthScreen, String title, String year, String urlImage) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              width: widthScreen * 0.2,
              child: Column(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Viga',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Quito - Ecuador",
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Viga', fontSize: 18),
                  ),
                  Text(
                    year,
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Viga', fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          width: widthScreen * 0.35,
        ),
        Container(
          width: widthScreen * 0.25,
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(urlImage), fit: BoxFit.scaleDown)),
        ),
      ],
    );
  }

  Widget rowDescriptionPasantia(double widthScreen, String title, String year,
      String urlImage, List<String> lista, BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return Column(
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Viga',
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Text(
            "Quito - Ecuador",
            style: TextStyle(
                color: Colors.black, fontFamily: 'Viga', fontSize: 12),
          ),
          Text(
            year,
            style: TextStyle(
                color: Colors.black, fontFamily: 'Viga', fontSize: 15),
          ),
          textWidgets(lista),
          SizedBox(width: widthScreen * 0.01),
          Container(
            width: widthScreen * 0.3,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(urlImage), fit: BoxFit.scaleDown)),
          ),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: widthScreen * 0.2,
                child: Column(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Viga',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Quito - Ecuador",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Viga',
                          fontSize: 15),
                    ),
                    Text(
                      year,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Viga',
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(width: widthScreen * 0.05),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(urlImage), fit: BoxFit.scaleDown)),
              ),
            ],
          ),
          Container(width: widthScreen * 0.35),
          textWidgets(lista),
        ],
      );
    }
  }

  Widget textWidgets(List<String> strings) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < strings.length; i++) {
      list.add(
        Text(
          strings[i],
          style:
              TextStyle(color: Colors.black, fontFamily: 'Viga', fontSize: 18),
        ),
      );
    }
    return new Column(children: list);
  }
}
