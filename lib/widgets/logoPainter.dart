import 'package:flutter/material.dart';

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    Paint paint = Paint();
    Path path = Path();
    paint.shader = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color.fromARGB(255, 255, 73, 179),
        Color.fromARGB(255, 52, 7, 99)
      ],
    ).createShader(rect);
    path.lineTo(0, size.height - size.height / 8);
    path.conicTo(size.width / 1.2, size.height, size.width,
        size.height - size.height / 8, 9);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawShadow(path, const Color.fromARGB(255, 242, 101, 197), 4, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
