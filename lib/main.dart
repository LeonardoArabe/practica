import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main()=>runApp(MiApp());
class MiApp extends StatelessWidget {
  const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App", 
      home: Inicio(),
    );
  }
}
class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  List data;
  Future <String> getData() async{
    var response = await http.get(
      Uri.parse("https://apprecuperaciondiego.azurewebsites.net/api/Products"),
      headers: {"Accept":"application/json"}
    ); 
    data=json.decode(response.body);
    print(data);
    return "Satisfactorio";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:Text("Leonardo App")
       ),
       body:Column(
         children:<Widget>[
         Center(
         child: Text("Leonardo Arabe"),
         ),
         Text("Programación Aplicada"),
         Image.network("https://www.semana.com/resizer/mPhF3aC4sktvuoDa2zdIAGzf2F0=/arc-anglerfish-arc2-prod-semana/public/3IQKPMZPSZCFBD4GDU5HOKLIXE.jpg"),
         Image.network("https://www.semana.com/resizer/mPhF3aC4sktvuoDa2zdIAGzf2F0=/arc-anglerfish-arc2-prod-semana/public/3IQKPMZPSZCFBD4GDU5HOKLIXE.jpg"),
         ElevatedButton(
           child: new Text("Obtener Datos"),
           onPressed: getData)
        ],
       ) 
    );
  }
}