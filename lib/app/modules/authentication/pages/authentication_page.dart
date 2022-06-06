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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
