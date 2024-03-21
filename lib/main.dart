import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController pesoController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();

  String _textoInfo = "Informe seus dados";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: Text("calculadora IMC"),
          centerTitle: true,
          backgroundColor: Colors.blue,

          actions: <Widget>[

            IconButton(
                onPressed: () {},
                icon: Icon(Icons.refresh)
            ),

          ]

      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            const Icon(
                Icons.person_outline,
                size: 120.0,
                color: Colors.blue
            ),

            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                labelText: "PESO (KG)",
                labelStyle: TextStyle(color: Colors.blue),

              ),

              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,


            ),

            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                labelText: "ALTURA (CM)",
                labelStyle: TextStyle(color: Colors.blue),

              ),

              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,


            ),

            Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),

              child: SizedBox(

                height: 50.0,

                child: ElevatedButton(

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent)
                  ),

                    onPressed: () {},
                    child: const Text("calcular")


                ),

              ),

            ),

            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0
              ),
            )
          ],
        ),
      ),
    );
  }
}
