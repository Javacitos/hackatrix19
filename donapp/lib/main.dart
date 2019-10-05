import 'package:flutter/material.dart';
import 'registro_dondante.dart';
import 'registro_ong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'DonApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//para las pantallas

//para conectar pantalla con el formulario
class PantallaRegistroDonante extends StatefulWidget {
  @override
  RegistroDonante createState() => RegistroDonante();
}

class PantallaRegistroOng extends StatefulWidget {
  @override
  RegistroOng createState() => RegistroOng();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.pink[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                'Donante',
                style: TextStyle(fontSize: 45),
              ),
              onPressed: () {
                pushSaved(context, 0);
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              color: Colors.pink[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                'ONG',
                style: TextStyle(fontSize: 45),
              ),
              onPressed: () {
                pushSaved(context, 1);
              },
            )
          ],
        ),
      ),
    );
  }

  void pushSaved(BuildContext context, int num) {
    if (num == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => new PantallaRegistroDonante()),
      );
    }
    else if (num == 1){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => new PantallaRegistroOng()),
      );
    }
  }
}
