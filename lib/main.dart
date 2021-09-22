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
        child: Center(
          child: Card(
            elevation: 5.0,
            color: Colors.teal,
            child: SizedBox(
              width: 300.0,
              height: 250.0,
              child: Image.asset(
                'images/landscape.jpg',
                fit: BoxFit.cover,
              )
            ),
          )
        )
      )
    );
  }

}