import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/tabs.page.dart';

class MenuTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
