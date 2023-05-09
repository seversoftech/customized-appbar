import 'package:flutter/material.dart';

import '../widgets/addbarWidgets.dart';
import '../widgets/logoPainter.dart';

class Home extends StatelessWidget {
   const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: LogoPainter(),
        size: const Size(400, 195),
        child: appBarContent(),
      ),
    );
  }
}
