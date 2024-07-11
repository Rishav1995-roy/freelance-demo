import 'package:flutter/material.dart';

class UpperVioletClipper extends CustomPainter {
  @override
    void paint(Canvas canvas, Size size) {
            
      Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
      paint_0_fill.color = Color(0xff6B5AE0).withOpacity(1.0);
      canvas.drawCircle(Offset(size.width*0.2441860,size.height*-0.03291139),size.width*0.9488372,paint_0_fill);

    }

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}