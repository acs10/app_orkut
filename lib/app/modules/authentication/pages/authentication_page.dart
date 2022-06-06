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
      body: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 228,
              height: 228,
              child:
                  Image.asset("lib/app/modules/authentication/assets/logo.png"),
            )
          ],
        ),
      ),
    );
  }
}
