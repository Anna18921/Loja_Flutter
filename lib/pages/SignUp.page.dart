import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/login.page.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKeySignUp = GlobalKey<FormState>();

  TextEditingController _controllerEmail = TextEditingController();

  TextEditingController _controllerName = TextEditingController();

  TextEditingController _controllerPwd = TextEditingController();

  var load = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 40,
            ),
            alignment: Alignment.centerLeft,
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 50, 40, 0),
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
              height: 550,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sign UP",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 45,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: _formKeySignUp,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _controllerName,
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            autofocus: false,
                            decoration: InputDecoration(
                              labelText: "Name",
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
                              _controllerName.text = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
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
                          SizedBox(
                            height: 30,
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
                    SizedBox(
                      height: 30,
                    ),
                    Button(context),
                  ],
                ),
              ),
            ),
          ),
        ],
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
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {
                navegar();
              },
            ),
          );
  }

  navegar() {
    String email = _controllerEmail.text;
    if (_formKeySignUp.currentState.validate()) {
      _formKeySignUp.currentState.save();

      setState(() {
        load = !load;
      });
      Future.delayed(
        const Duration(seconds: 2),
        () => {Navigator.pop(context)},
      );
    }
  }
}
