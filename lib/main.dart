import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Roba per a vendre")),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: ListView(
          children: [
            targeta(0,"Bufanda", "informacion", "precio", "valoracion" ),
            targeta(1,"Camisa", "informacion", "precio", "valoracion" ),
            targeta(2,"Pantalón tejano", "informacion", "precio", "valoracion" ),
            targeta(3,"Chaquetón", "informacion", "precio", "valoracion" ),
            targeta(4, "Zapatos", "informacion", "precio", "valoracion"),
            targeta(5, "Calcetines", "informacion", "precio", "valoracion"),
            targeta(6, "Calzoncillos", "informacion", "precio", "valoracion"),
            targeta(7, "Sombrero", "informacion", "precio", "valoracion"),
          ],
        ));
  }

  Widget targeta(int pos,String titulo,String info, String precio, String valoracion) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Text(titulo),
                Row(
                  children: [
                    Image.asset(
                      "assets/$pos.jpg",
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
