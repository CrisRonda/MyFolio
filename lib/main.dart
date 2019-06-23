import 'package:flutter_web/material.dart';
import 'package:hello_world/aboutmepage.dart';
import 'package:hello_world/files_page.dart';
import './studies.dart';
import './responsivelayout.dart';
import './me.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 50,
                padding: EdgeInsets.only(top: 10, left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Cristian Ronda",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Viga',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Desarrollador de Software",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Viga",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              ResponsiveLayout.isSmallScreen(context)
                  ? SizedBox(width: 100)
                  : SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 300,
                    ),
              ResponsiveLayout.isSmallScreen(context)
                  ? Image.network(
                      'assets/mario.png',
                      width: 25,
                      height: 25,
                    )
                  : TabBar(
                      controller: tabController,
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey.withOpacity(0.6),
                      isScrollable: true,
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            'Home',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Viga',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Sobre Mí',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Viga',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Mis estudios',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Viga',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Mis trabajos',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Viga',
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                AboutMePage(),
                Me(),
                Studies(),
                Files()
              ],
            ),
          )
        ],
      ),
    );
  }
}
