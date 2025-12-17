import 'package:devoirsemestre1_developpementmobile_flutter_3ii/test.dart';
import 'package:flutter/material.dart';
import 'book_list.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController controllerLogin = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Page de connexion"),
          TextField(
            controller: controllerLogin,
            decoration: const InputDecoration(
              labelText: "Utilisateur",
              hintText: "Entrez votre utilisateur",
            ),
          ),
          const SizedBox(height: 50),
          TextField(
            controller: controllerPassword,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Mot de passe",
              hintText: "Entrez votre mot de passe",
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              if (controllerLogin.text == "Eddy" &&
                  controllerPassword.text == "Eddy20") {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const BookList()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Utilisateur ou mot de passe incorrect"),
                  ),
                );
              }
            },
            child: const Text("Connexion"),
          ),
        ],
      ),
    );
  }
}
