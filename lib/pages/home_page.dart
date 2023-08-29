import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trilhaapp/service/generate_random_number_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numberGenerate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      body: Center(child: Text(numberGenerate.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            numberGenerate =
                GenerateNumberRandomService.generateRandomNumber(1000);
          });

          print(numberGenerate);
        },
      ),
    );
  }
}
