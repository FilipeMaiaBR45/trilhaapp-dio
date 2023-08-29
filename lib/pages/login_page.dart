import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 241, 243),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 5,
                    child: Image.network(
                      "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Ja tem cadastro?"),
              const SizedBox(
                height: 10,
              ),
              const Text("Faça seu login e make the change_"),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                alignment: Alignment.center,
                height: 30,
                child: const Text("Informe seu email"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                child: const Text("Informe sua senha"),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                child: const Text("Botão"),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
