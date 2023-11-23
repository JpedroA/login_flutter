import 'package:flutter/material.dart';

class cadastro extends StatefulWidget {
  const cadastro({super.key});

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("meus dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nome:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: nomeController,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Data de nascimento"),
            TextField(
              controller: DataNascimentoController,
              readOnly: true,
            ),
            TextButton(
                onPressed: () {
                  debugPrint(nomeController.text);
                },
                child: const Text("SALVAR"))
          ],
        ),
      ),
    );
  }
}
