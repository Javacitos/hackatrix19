import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

class InfoFundacion extends State<PantallaInfoFundacion> {
  Color plata = Colors.yellow[200],ropa = Colors.yellow[200],comida = Colors.yellow[200],otros = Colors.yellow[200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Los Piletones')),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: plata,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Icon(FontAwesomeIcons.dollarSign),
                  onPressed: () {
                    setState(() {
                      plata = Colors.pink[200];
                      comida = Colors.yellow[200];
                      ropa =Colors.yellow[200];
                      otros = Colors.yellow[200];
                    });
                  },
                ),
                RaisedButton(
                  color: ropa,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Icon(FontAwesomeIcons.tshirt),
                  onPressed: () {
                    setState(() {
                      plata = Colors.yellow[200];
                      comida = Colors.yellow[200];
                      ropa =Colors.pink[200];
                      otros = Colors.yellow[200];
                    });
                  },
                ),
                RaisedButton(
                  color: comida,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Icon(FontAwesomeIcons.utensils),
                  onPressed: () {
                    setState(() {
                      plata = Colors.yellow[200];
                      comida = Colors.pink[200];
                      ropa =Colors.yellow[200];
                      otros = Colors.yellow[200];
                    });
                  },
                ),
                RaisedButton(
                  color: otros,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Icon(FontAwesomeIcons.borderAll),
                  onPressed: () {
                    setState(() {
                       plata = Colors.yellow[200];
                      comida = Colors.yellow[200];
                      ropa =Colors.yellow[200];
                      otros = Colors.pink[200];
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 50,),
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
              child:Text("Fue formado por Margarita Barrientos e Isidro, su marido en octubre del año 1996, ante la gran necesidad de alimentos de la gente y, al vivirlo en primera persona, empezaron dandole de comer a 5 niños para luego ir creciendo en cantidad de personas, por lo que se propusieron crear un Comedor Comunitario para ayudar y darle alimentos a quienes más lo necesitan. Diariamente cientos de chicos, ancianos y familias completas encuentran su desayuno, almuerzo y cena; y también son atendidos en muchas de sus necesidades. El comedor fue el inicio de una serie de obras que comprende hoy la Fundación Margarita Barrientos. Como un Centro de Salud, dos jardines de infantes, un Centro para abuelos, una Panadería, una Biblioteca, un Club de madres, entre otros tantos programas y talleres que tienen como único objetivo ayudar a los que más lo necesitan.  Todas las personas que trabajan en el comedor Los Piletones y en los diferentes sectores de la fundación, son voluntarios, que colaboran desde su lugar con las diferentes tareas. ",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),) ,),
              RaisedButton(
            color: Colors.green[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              //padding: const EdgeInsets.all(10),
              width: 275,
              margin: const EdgeInsets.all(5),
              child: Text("DONAR !!!!",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
            ),
            onPressed: () {
                
            },
          )
            
          ],
        ));
  }
}
