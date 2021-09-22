import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


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
    double largeur = MediaQuery.of(context).size.width;
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
          elevation: 10,
          centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Salut les codeurs',
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Card(
             child: SizedBox(
               width: MediaQuery.of(context).size.width / 1.5,
               height: 200,
               child: Image.asset('images/landscape.jpg',
                 fit: BoxFit.cover,
               ),
             ),
            ),
            Container(
              height: largeur / 5,
              color: Colors.red,
              margin: const EdgeInsets.only(left:20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.thumb_up,
                    color: Colors.white,
                    size: largeur / 10,
                  ),
                  Icon(Icons.thumb_down,
                    color: Colors.white,
                    size: largeur / 10,
                  ),
                  Icon(Icons.palette,
                    color: Colors.white,
                    size: largeur / 10,
                  ),
                  Icon(Icons.directions_bike,
                    color: Colors.white,
                    size: largeur / 10,
                  ),
                ]
              )
            )
          ]
        )
      )
    );
  }

}