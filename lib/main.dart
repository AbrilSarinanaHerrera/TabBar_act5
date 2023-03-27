import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Pestaña TabBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
} // mi aplicacion

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} // home page statefulwidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.amber),
            tabs: [
              Tab(icon: Icon(Icons.account_circle)),
              Tab(icon: Icon(Icons.alarm)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.favorite)),
            ],
          ),
          title: Text('Floreria'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.account_circle, size: 350),
            Icon(Icons.alarm, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.favorite, size: 350),
          ],
        ),
      ),
    );
  } //Widget BuildContext
} //_MyHomePageState
