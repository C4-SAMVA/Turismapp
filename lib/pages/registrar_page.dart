import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/pages/login_page.dart';
import 'package:registrar_page_turismapp/repository/firebase_api.dart';

class RegistrarPage extends StatefulWidget {
  const RegistrarPage({Key? key}) : super(key: key);

  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

class _RegistrarPageState extends State<RegistrarPage> {

  final FirebaseApi _firebaseApi = FirebaseApi();

  final nombres = TextEditingController();
  final apellidos = TextEditingController();
  final telefono = TextEditingController();
  final direccion = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final passwordConf = TextEditingController();


  String _data = "Información: ";

  void saveUser(User user) async {
    var result = await _firebaseApi.registerUser(user.email, user.password);
  }

  void _onRegisterButtonClicked() {
    setState(() {
      _data = "Nombre: ${nombres.text} \n Correo Electrónico: ${email.text}";

      var user = User(
          nombres.text, email.text, password.text
      );

      saveUser(user);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                const SizedBox(
                  height: 70,
                ),
                const Image(
                    image: AssetImage("assets/colombia_bandera.png"),
                    width: 80,
                    height: 80),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    "Regístrate"),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: nombres,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Nombre completo",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black54),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Correo Electrónico",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black54),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.black54,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  //keyboardType: TextInputType.emailAddress,
                  //maxLength: 8,
                  decoration: InputDecoration(
                      labelText: "Contraseña",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black54),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      suffixIcon: const Icon(
                        Icons.vpn_key_sharp,
                        color: Colors.black54,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordConf,
                  //keyboardType: TextInputType.emailAddress,
                  //maxLength: 8,
                  decoration: InputDecoration(
                      labelText: "Confirmar Contraseña",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black54),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      suffixIcon: const Icon(
                        Icons.vpn_key_sharp,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shadowColor: Colors.black54,
                        fixedSize: const Size(200, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                        ),
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 20)),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const navigationBar()));
                      _onRegisterButtonClicked();
                    },
                    child: const Text("Registrarse")),
                Text(
                  _data,
                  style: const TextStyle(
                      fontSize: 12, fontStyle: FontStyle.italic),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
