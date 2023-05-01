import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  flexibleSpace: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TabBar(
                      // isScrollable: true,
                      // indicator: BoxDecoration(),
                      indicatorColor: Color.fromARGB(255, 243, 82, 33),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      tabs: [
                        Tab(icon: Icon(Icons.directions_bike)),
                        Tab(icon: Icon(Icons.directions_bus)),
                        Tab(icon: Icon(Icons.directions_car)),
                      ]),
                    ],
                  )),
                  // title: Text("Prova tabs"),
                  // centerTitle: true,
                 
                body: const TabBarView(children: [
                  Tab(
                      icon: Icon(Icons
                          .directions_bike)), // External widget - pages here
                  Tab(icon: Icon(Icons.directions_bus)),
                  Tab(icon: Icon(Icons.directions_car))
                ]))));
  }
}