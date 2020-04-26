import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/SignUp.page.dart';
import 'package:layouts_flutter/pages/menu.dart';

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controllerEmail = TextEditingController();

  TextEditingController _controllerPwd = TextEditingController();

  var load = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[300],
              offset: Offset(1, 1.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        height: 450,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Welcome,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Sign in Continue,",
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _controllerEmail,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo Obrigatório';
                        }
                      },
                      onSaved: (value) {
                        _controllerEmail.text = value;
                      },
                    ),
                    TextFormField(
                      controller: _controllerPwd,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo Obrigatório';
                        }
                      },
                      onSaved: (value) {
                        _controllerPwd.text = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onPressed: () {},
                  child: Text("Forgot Password? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Button(context),
          ],
        ),
      ),
    );
  }

  Widget Button(BuildContext context) {
    return load
        ? Container(
            alignment: Alignment.center,
            height: 70,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: FlatButton(
              child: Text("SIGN IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  )),
              onPressed: () {
                navegar();
              },
            ),
          );
  }

  navegar() {
    String email = _controllerEmail.text;
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black38,
          content: Text(
            "Welcome, $email",
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      );
      setState(() {
        load = !load;
      });
      Future.delayed(
        const Duration(seconds: 2),
        () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MenuTab()))
        },
      );
    }
  }
}
