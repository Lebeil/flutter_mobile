import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Les widgets',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: const Text('Salut'),
          leading: const Icon(Icons.account_circle),
          actions: const <Widget>[
            Icon(Icons.access_alarm),
            Icon(Icons.golf_course),
            Icon(Icons.directions_bike),
          ],
          elevation: 10.0,
          centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        margin: const EdgeInsets.only(top: 20.0, bottom: 15.0),
        child: const Center(
          child: Text(
            'Apprentissage des Widgets avec les cours Flutter',
            textAlign: TextAlign.center,
            textScaleFactor: 2.0,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
            ),
            maxLines: 2,
          ),
        ),
      )
    );
  }

}