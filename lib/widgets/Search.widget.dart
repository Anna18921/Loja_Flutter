import 'package:flutter/Material.dart';
import 'package:layouts_flutter/widgets/animated.input.widget.dart';

class Search_Widget extends StatefulWidget {
  @override
  _Search_WidgetState createState() => _Search_WidgetState();
}

class _Search_WidgetState extends State<Search_Widget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool menuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AnimatedInput(
            controller: _controller,
          ),
          FlatButton(
            onPressed: () {
              menuOpen ? _controller.forward() : _controller.reverse();
              menuOpen = !menuOpen;
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _controller,
              semanticLabel: 'Open Menu',
            ),
          )
        ]);
  }
}
// Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: Color.fromRGBO(0, 0, 0, 0.1),
//         borderRadius: BorderRadius.circular(128),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.search,
//             ),
//             Container(
//               width: 300,
//               padding: EdgeInsets.only(left: 10),
//               child: TextFormField(
//                 keyboardType: TextInputType.text,
//                 autofocus: false,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   labelText: "Search ....",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w300,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     )
