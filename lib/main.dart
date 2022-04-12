import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
    const String infoBufanda =
        "Estupenda bufanda de seda, combina perfectamente con ropa de esport como con ropa de vestir";
      const String infoCamisa =
        "Estupenda camisa de lino con estampados en rojo claro. Ideal para primera cita o ir a firt dates";
    const String infoPantalon =
        "Estupenda patalon tejano, digo estupendo pero és el mismo modelo que se lleva vendiendo hace 50 años";
    const String infoChaqueton =
        "Estupenda chaquetón de color negro, sólo usado una vez y el niño lo manchó de aciete";
    const String infoZapatos =
        "Estupendos zapatos, ideal por si vas a un cumple disfrado de miliki";
        const String infoCalcetines =
        "Estupendos calcetines de deporte. Los envío lavados y tienen poco uso";
        const String infoCalzones =
        "Estupendos calzoncillos de color verde, son ideales para noches románticas";
        const String infoSombrero =
        "Estupendo sombrero de los años 40, ideal para fiesta de disfraces";

  
  
  
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Roba per a vendre")),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(
        children: [
          targeta(0, "Bufanda", infoBufanda, "15 Euros", 1.5),
          targeta(1, "Camisa", infoCamisa, "20 Euros", 2),
          targeta(2, "Pantalón tejano", infoPantalon, "50 Euros",3),
          targeta(3, "Chaquetón", infoChaqueton, "25 Euros", 2),
          targeta(4, "Zapatos", infoZapatos, "10 Euros", 0.5),
          targeta(5, "Calcetines", infoCalcetines, "5 Euros", 2.3),
          targeta(6, "Calzoncillos", infoCalzones, "32 Euros", 3.4),
          targeta(7, "Sombrero", infoSombrero, "5 Euros", 2),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("añadir prenda");
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget targeta(
      int pos, String titulo, String info, String precio, double valoracion, ) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            "assets/collage.jpg",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: 120,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          child: TextButton(
            onPressed: () {
              print("targeta picada $pos");
            },
            child: Opacity(
              opacity: 0.9,
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/$pos.jpg",
                        width: 120,
                        height: 120,
                      ),
                      Column(
                        children: [
                          Text(
                            titulo,
                            style: const TextStyle(
                                fontSize: 28,
                                color: Color.fromARGB(255, 247, 106, 96)),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 185,
                              child: Text(
                                info,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          const Divider(),
                          Text("Precio :$precio", style: const TextStyle(fontWeight:  FontWeight.bold),),
                          const Divider(),
                          Row(
                            children: [
                              const Text("Estado "),
                              SizedBox(
                                width: 150,
                                child: RatingBar.builder(
                                  initialRating: valoracion,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 3,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  // ignore: prefer_const_constructors
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
