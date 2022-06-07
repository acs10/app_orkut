import 'package:app_orkut/app/modules/authentication/controllers/authentication_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  final String title;
  const AuthenticationPage({Key? key, this.title = 'AuthenticationPage'})
      : super(key: key);
  @override
  AuthenticationPageState createState() => AuthenticationPageState();
}

class AuthenticationPageState extends State<AuthenticationPage> {
  final AuthenticationStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 228,
                height: 228,
                child: Image.asset(
                    "lib/app/modules/authentication/assets/logo.png"),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 229, 227, 220),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 5)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      hintText: 'Email'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 229, 227, 220),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 5)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.grey,
                      ),
                      hintText: 'Senha'),
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 14, right: 38),
                  child: Text('Esqueceu a senha ?',
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 48,
                width: MediaQuery.of(context).size.width / 2.2,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: const Color(0xFFD60C85)),
                  child: Text('Login'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
