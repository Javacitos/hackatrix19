import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';

class RegistroOng extends State<PantallaRegistroOng> {
  Color saveCheck = Colors.indigo[200];
  bool save = false;
  String nombre, direccion, localidad, mail, telefono;
  final nombreController = TextEditingController();
  final direccionController = TextEditingController();
  final localidadController = TextEditingController();
  final telefonoController = TextEditingController();
  final mailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    setState(() {
      obtenerPreferencias();
      if (save == true) {
        saveCheck = Colors.green[300];
      }
    });
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(centerTitle: true, title: Text('Datos Ong')),
      body: ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.indigo[200],
                      width: 3), // grosor de la linea de borde
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)), // para hacerlo bordes redondeados
                  shape: BoxShape.rectangle),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      controller: nombreController,
                      decoration: InputDecoration(labelText: 'Razon Social: '),
                      keyboardType: TextInputType.text,
                      validator: (val) =>
                          val.length == 0 ? "Ingrese nombre" : null,
                      onSaved: (val) => nombre = val,
                    ),
                    TextFormField(
                      controller: direccionController,
                      decoration: InputDecoration(labelText: 'Direccion:'),
                      keyboardType: TextInputType.text,
                      validator: (val) =>
                          val.length == 0 ? "Ingrese direccion" : null,
                    ),
                    TextFormField(
                      controller: localidadController,
                      decoration: InputDecoration(labelText: 'Localidad:'),
                      keyboardType: TextInputType.text,
                      validator: (val) =>
                          val.length == 0 ? "Ingrese localidad" : null,
                    ),
                    TextFormField(
                      controller: telefonoController,
                      decoration: InputDecoration(labelText: 'Telefono:'),
                      keyboardType: TextInputType.number,
                      validator: (val) =>
                          val.length == 0 ? "Ingrese telefono" : null,
                    ),
                    TextFormField(
                      controller: mailController,
                      decoration: InputDecoration(labelText: 'Mail:'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) =>
                          val.length == 0 ? "Ingrese mail" : null,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Builder(
                builder: (context) => RaisedButton(
                  color: saveCheck,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    //padding: const EdgeInsets.all(10),
                    width: 275,
                    margin: const EdgeInsets.all(5),
                    child: Icon(
                      Icons.save,
                      size: 45,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      guardarPreferencias();
                      // Si el formulario es válido, queremos mostrar un Snackbar
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Datos almacenados'),
                        action: SnackBarAction(
                          label: 'Deshacer',
                          onPressed: () {
                            //realiza funcion para borra cosas
                            deleteInfo();
                          },
                        ),
                      ));
                    }
                    save = true;
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // esta funcion siempre tiene que ir antes de "Dibujar" la pantalla
  Future obtenerPreferencias() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    //vuelvo a dibujar por las dudas tarde (milecimas de segundos) en cargar
    setState(() {
      nombre = pref.get("nombre_ong") ?? "nombre vacio";
      direccion = pref.get("direccion_ong") ?? "direccion vacio";
      localidad = pref.get("localidad_ong") ?? "localidad vacio";
      telefono = pref.get("telefono_ong") ?? "0";
      mail = pref.get("mail_donante") ?? "mail vacio";
      save = pref.getBool("save");
    });
  }

  //funcion que guarda los datos
  Future guardarPreferencias() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nombre_ong", nombreController.text);
    pref.setString("direccion_ong", direccionController.text);
    pref.setString("localidad_ong", localidadController.text);
    pref.setString("telefono_ong", telefonoController.text);
    pref.setString("mail_donante", mailController.text);
    pref.setBool("save", save);
  }

  Future deleteInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nombre_ong", "ninguno");
    pref.setString("direccion_ong", "ninguno");
    pref.setString("localidad_ong", "ninguno");
    pref.setString("telefono_ong", "ninguno");
    pref.setString("mail_ong", "ninguno");
    nombre = pref.getString("nombre_ong");
    print("el valor de nombre es: $nombre");
  }
}