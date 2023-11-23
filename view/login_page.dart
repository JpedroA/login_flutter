import 'package:flutter/material.dart';
import 'package:trilhaapp/view/main_page.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  var emailController = TextEditingController(text: "");
  var passwordController = TextEditingController(text: "");
  bool isObscuredText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 10),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                        flex: 8,
                        child: Image.network(
                            "https://hermes.digitalinnovation.one/assets/diome/logo.png")),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ja tem cadastro",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Faça seu login e make the change._",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    width: double.infinity,
                    height: 30,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    // formulario de email
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) {
                        debugPrint(value);
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 0),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 194, 69, 216))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.email,
                              color: Color.fromARGB(255, 194, 69, 216))),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  //formulario de password
                  child: TextField(
                      controller: passwordController,
                      obscureText: isObscuredText,
                      onChanged: (value) {
                        debugPrint(value);
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: -10),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 194, 69, 216))),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.white),
                          prefixIcon: const Icon(Icons.security,
                              color: Color.fromARGB(255, 194, 69, 216)),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isObscuredText = !isObscuredText;
                              });
                            },
                            child: Icon(
                                isObscuredText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color.fromARGB(255, 194, 69, 216)),
                          ))),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        if (emailController.text.trim() == "jpedro@email.com" &&
                            passwordController.text.trim() == "1234") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Erro ao efeturar o login")));
                        }
                        debugPrint(emailController.text);
                        debugPrint(passwordController.text);
                      },
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 194, 69, 216))),
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(child: Container()),
                Container(
                  height: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                        color: Color.fromARGB(255, 103, 33, 243),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  height: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const Text(
                    "Criar conta",
                    style: TextStyle(
                        color: Color.fromARGB(202, 200, 0, 219),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
