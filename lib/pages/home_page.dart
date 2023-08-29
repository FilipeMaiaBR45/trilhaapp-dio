import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/generate_random_number_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numberGenerate = 0;
  var qtdClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu App",
          // style: GoogleFonts.pacifico(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("foi clicado $qtdClicks"),
          ),
          Center(
            child: Text(
              numberGenerate.toString(),
              //style: GoogleFonts.acme(fontSize: 20),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            qtdClicks++;
            numberGenerate =
                GenerateNumberRandomService.generateRandomNumber(1000);
          });

          print(numberGenerate);
        },
      ),
    );
  }
}
