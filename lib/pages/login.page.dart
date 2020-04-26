import 'package:flutter/material.dart';
import 'package:layouts_flutter/widgets/button.redesSociais.loginPage.widget.dart';
import 'package:layouts_flutter/widgets/form.login.widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 60),
          FormLogin(),
          Text(
            "-OR-",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          ButtonSocial(
            icone: "assets/facebook.png",
            label: "Sign In with Facebook",
          ),
          ButtonSocial(
            icone: "assets/google.png",
            label: "Sign In with Google",
          ),
        ],
      ),
    );
  }
}
