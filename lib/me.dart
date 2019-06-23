import 'dart:math';

import 'package:flutter_web/material.dart';
import 'dart:js' as js;
import './responsivelayout.dart';

class Me extends StatelessWidget {
  final Random _random = Random();
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width.toDouble();
    String resumen1 =
        "Soy Cristian Ronda nací el 28 de mayo de 1994 en Pujilí-Ecuador, a pesar de que nací en Pujilí he vivido en Quito la mayor parte de mi vida. En mi niñez estudie en la primaria en la Unidad Educativa Madre de la Divina Gracia ubicada en el Valle de los Chillos. En mi adolescencia cambie mi residencia al Sur de Quito y estudie en el Instituto Tecnológico Benito Juárez donde me gradué en el 2012 con el título de Físico matemático.  ";
    String resumen2 =
        "El mismo año, ingrese a la Escuela Politécnica Nacional del Ecuador en la carrera de Ingeniería Electrónica y Redes de Información en la Faculta de Eléctrica y Electrónica. Y actualmente estoy por graduarme.  ";
    String soy1 =
        "Soy una persona tranquila, me gusta mucho la música, las series en Netflix o jugar en línea.  en mis tiempos libre prefiero salir con mi familia o mis amigos a pasear 🚌, conversar o especialmente a comer 😉. Soy muy fan de la comida 🇪🇨 y viajar cuando tengo tiempo o dinero 😥. También, disfruto de programar 🤓 🤯 y aprender nuevos lenguajes o temas relacionados con redes, AI, servidores, ditros 🐧 y tecnología en general. ";
    String hab =
        "Me encanta aprender cosas nuevas y trabajar en equipo por lo que para mí es importante conocer tecnologías como GitHub. Y como las siguientes:  ";
    List<String> habilidades = [
      "GitHub",
      "C# y .NET",
      "React y React Native",
      "Flutter",
      "Java & Kotlin",
      "Sistemas Operativos Linux, Windows",
      "SQL/ MySQL",
      "Cloud Computing en Firebase",
      "Redes Cisco Routing & Switching / Meraki"
    ];
    var separator = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 2,
        color: Colors.black,
        width: widthScreen * 0.95,
      ),
    );
    return SizedBox(
      width: widthScreen,
      child: ListView(
        padding: EdgeInsets.all(50),
        children: <Widget>[
          textTitle("RESUME"),
          spacer(25),
          textNormal(resumen1),
          spacer(12),
          textNormal(resumen2),
          separator,
          textTitle("RESUME"),
          spacer(25),
          textNormal(soy1),
          separator,
          textTitle("Habilidades"),
          spacer(25),
          textNormal(hab),
          spacer(12),
          textWidgets(habilidades),
          separator,
          textTitle("REDES"),
          spacer(25),
          ResponsiveLayout.isSmallScreen(context) ?
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              materialButtonCircular('https://www.facebook.com/cristian.ronda2',Icon(Icons.face,size: widthScreen*0.05, color: Colors.white,),Colors.blue),
              spacerWidth(widthScreen, true),              
              materialButtonCircular('https://github.com/CrisRonda',Icon(Icons.android,size: widthScreen*0.05, color: Colors.white,),Colors.black),
              spacerWidth(widthScreen, true),              
              materialButtonCircular('https://www.instagram.com/cristian.ronda1/?hl=es-la',Icon(Icons.camera_roll,size: widthScreen*0.05, color: Colors.white,),Colors.purple),
              spacerWidth(widthScreen, true),              
              materialButtonCircular('https://twitter.com/CristianRonda3',Icon(Icons.new_releases,size: widthScreen*0.05, color: Colors.white,),Colors.blueGrey),
              spacerWidth(widthScreen, true),              
              materialButtonCircular('https://www.linkedin.com/in/cristian-ronda-169414180/',Icon(Icons.bookmark_border,size: widthScreen*0.05, color: Colors.white,),Colors.cyanAccent),
              spacerWidth(widthScreen, true),              
            ],
          ):
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              materialButtonCircular('https://www.facebook.com/cristian.ronda2',Icon(Icons.face,size: widthScreen*0.05, color: Colors.white,),Colors.blue),
              spacerWidth(widthScreen, false),
              materialButtonCircular('http, falses://github.com/CrisRonda',Icon(Icons.android,size: widthScreen*0.05, color: Colors.white,),Colors.black),
              spacerWidth(widthScreen, false),
              materialButtonCircular('https://www.instagram.com/cristian.ronda1/?hl=es-la',Icon(Icons.camera_roll,size: widthScreen*0.05, color: Colors.white,),Colors.purple),
              spacerWidth(widthScreen, false),
              materialButtonCircular('https, false://twitter.com/CristianRonda3',Icon(Icons.new_releases,size: widthScreen*0.05, color: Colors.white,),Colors.blueGrey),
              spacerWidth(widthScreen, false),
              materialButtonCircular('https://www.linkedin.com/in/cristian-ronda-169414180/',Icon(Icons.bookmark_border,size: widthScreen*0.05, color: Colors.white,),Colors.cyanAccent),
              spacerWidth(widthScreen, false),
            ],
          )
        ],
      ),
    );
  }

  SizedBox spacerWidth(double widthScreen, bool column ) => column ?SizedBox(width: widthScreen*0.1,):SizedBox(width: 10,) ;

  RawMaterialButton materialButtonCircular( String link, Icon iconUser, Color color) {
    return new RawMaterialButton(
              onPressed: () {js.context.callMethod("open",[link]);},
              child: iconUser,
              shape: new CircleBorder(),
              elevation: 2.0,
              fillColor: color,
              padding: const EdgeInsets.all(15.0),
            );
  }

  SizedBox spacer(double number) {
    return SizedBox(
      height: number,
    );
  }

  Widget textWidgets(List<String> strings) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < strings.length; i++) {
      list.add(textListColor("👌🏼 " + strings[i]));
    }
    return new Column(
      children: list,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  Text textListColor(String resumen1) {
    return Text(
      resumen1,
      style: TextStyle(
        fontSize: 18,
        color: Color.fromRGBO(_random.nextInt(255), _random.nextInt(255),
            _random.nextInt(255), 1),
        fontFamily: 'Viga',
      ),
    );
  }

  Text textNormal(String resumen1) {
    return Text(
      resumen1,
      style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontFamily: 'Viga',
          fontStyle: FontStyle.normal),
    );
  }

  Text textTitle(title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'Viga',
          fontWeight: FontWeight.bold,
          fontSize: 32),
    );
  }
}
