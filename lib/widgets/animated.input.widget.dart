import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {
  final AnimationController controller;

  final Animation<double> containerOpacity;
  final Animation<double> containerBorderRadiusAnim;
  final Animation<double> containerSizeAnim;

  AnimatedInput({this.controller})
      : containerOpacity = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.7, 0.9),
          ),
        ),
        containerSizeAnim = Tween(
          begin: 0.0,
          end: 280.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.2, 0.3),
          ),
        ),
        containerBorderRadiusAnim = Tween(
          begin: 0.0,
          end: 30.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.25, 0.4),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _animate,
    );
  }

  Widget _animate(BuildContext context, child) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(
          containerBorderRadiusAnim.value,
        ),
      ),
      margin: EdgeInsets.all(5),
      width: containerSizeAnim.value,
      child: Opacity(
        opacity: containerOpacity.value,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 200,
              child: TextFormField(
                keyboardType: TextInputType.text,
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Search ....",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
