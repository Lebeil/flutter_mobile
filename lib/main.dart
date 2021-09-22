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

  bool oui = false;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    );

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
                color: (oui) ? Colors.grey[900] : Colors.red,
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
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                print('Bouton');
                setState((){
                  oui = !oui;
                });
              }),
            TextButton(
              onPressed: boutonAppuye,
              child: const Text(
                'appuyé moi',
              ),
            ),
            ElevatedButton(
              onPressed: boutonAppuye,
              child: const Text('Je suis plus haut que toi !'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Colors.blue,
                elevation: 18,
                shadowColor: Colors.red.withOpacity(0.9),
                minimumSize: const Size(300, 100),
                shape: shape,
              )
            ),
            OutlinedButton(
              onPressed: boutonAppuye,
              child: const Text('Je suis un bouton encadré!'),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.pink[50],
                primary: Colors.green,
                side: const BorderSide(width: 5, color: Colors.orange),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
              ),
            ),
            Container(
              height: largeur / 5,
              color: Colors.blue,
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
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: boutonAppuye,
          elevation: 8,
          tooltip: 'changer oui',
          child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void boutonAppuye() {
    setState(() {
      oui = !oui;
    });
  }
}