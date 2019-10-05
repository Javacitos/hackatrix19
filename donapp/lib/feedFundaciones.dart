import 'package:donapp/registro_dondante.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';


class FeedFundacion extends State<PantallaFeedFundacion> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(centerTitle: true, title: Text('Fundaciones')),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.indigo[200],
                      width: 3), // grosor de la linea de borde
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)), // para hacerlo bordes redondeados
                  shape: BoxShape.rectangle),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(
                        child: Text("Nombre fundacion"),
                        onPressed: (){
                          pushSaved(context,3);
                        },
                      ),
                      SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.dollarSign),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(FontAwesomeIcons.utensils),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(FontAwesomeIcons.borderAll),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(FontAwesomeIcons.tshirt),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.indigo[200],
                      width: 3), // grosor de la linea de borde
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)), // para hacerlo bordes redondeados
                  shape: BoxShape.rectangle),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text("Nombre fundacion"),
                        onPressed: (){
                          pushSaved(context,3);
                        },
                      ),
                      SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.dollarSign),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.utensils),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.borderAll),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.tshirt),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.indigo[200],
                      width: 3), // grosor de la linea de borde
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)), // para hacerlo bordes redondeados
                  shape: BoxShape.rectangle),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text("Nombre fundacion"),
                        onPressed: (){
                          pushSaved(context,3);
                        },
                      ),
                      SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.dollarSign),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.utensils),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.borderAll),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.tshirt),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.indigo[200],
                      width: 3), // grosor de la linea de borde
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)), // para hacerlo bordes redondeados
                  shape: BoxShape.rectangle),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text("Nombre fundacion"),
                        onPressed: (){
                          pushSaved(context,3);
                        },
                      ),
                      SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.dollarSign),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.utensils),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.borderAll),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(FontAwesomeIcons.tshirt),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata")
                ],
              ),
            )
          ],
        ));
  }

 
}
