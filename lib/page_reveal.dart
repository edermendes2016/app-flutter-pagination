import 'dart:math';
import 'package:flutter/material.dart';

class PageReveal extends StatelessWidget {
  final double revealPercent;
  final Widget child;

  PageReveal({this.revealPercent, this.child});

  @override
  Widget build(BuildContext context) {
    return new ClipOval(      
        clipper: new CirculeRevealClipper(revealPercent),
      child: child,

    );
  }
}
class CirculeRevealClipper extends CustomClipper<Rect>{

  final double revealPercent;

  CirculeRevealClipper(
    this.revealPercent
  );


  @override
  Rect getClip(Size size) {
   final epicenter = new Offset(size.width / 2, size.height * 0.9);

   double theta = atan(epicenter.dy / epicenter.dx);
   final distanceToCenter = epicenter.dy / sin(theta);
   final radius = distanceToCenter * revealPercent;
   final diameter = 2 * radius;

   return new Rect.fromLTWH(epicenter.dx - radius, epicenter.dy - radius, diameter, diameter);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
  }

}
