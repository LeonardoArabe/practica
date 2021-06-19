import 'package:flutter/material.dart';
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
        ]
       ) 
    );
  }
}