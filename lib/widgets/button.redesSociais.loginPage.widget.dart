import 'package:flutter/material.dart';

class ButtonSocial extends StatelessWidget {
  var icone;
  String label;

  ButtonSocial({
    @required this.icone,
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
      child: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(0.5, 0.5),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              height: 60,
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 40, 0),
                      child: Image.asset(
                        icone,
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Text(label),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
