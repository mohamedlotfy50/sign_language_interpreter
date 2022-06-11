import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../domain/interpreter/avatar_animation.dart';
import 'path_drawer.dart';

class PointToShape extends CustomPainter with AvatarPathPainter {
  final FrameAnimation animation;

  PointToShape({
    required this.animation,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..color = Colors.black
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(drawArmpath(animation.leftArm, size), paint);
    canvas.drawPath(drawWrist(animation.leftArm, size), paint);
    canvas.drawPath(drawArmpath(animation.rightArm, size), paint);
    canvas.drawPath(drawWrist(animation.rightArm, size), paint);
    canvas.drawPath(
        drawLegs(animation.leftLeg, animation.rightLeg, size), paint);

    canvas.drawPath(
        drawBody(animation.leftArm, animation.rightArm, animation.leftLeg,
            animation.rightLeg, size),
        paint);
    canvas.drawPath(
        drawHand(animation.leftHand, animation.leftArm, size), paint);
    canvas.drawPath(
        drawHand(animation.rightHand, animation.rightArm, size), paint);

    canvas.drawCircle(
        Offset(size.width * animation.face.f2.x,
            size.height * animation.face.f2.y - (avatarSize * 1.4)),
        size.height * ((animation.face.f2.y - animation.face.f0.y) / 1.5),
        paint);

    canvas.drawPath(
        drawNeck(animation.face, animation.leftArm, animation.rightArm, size),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
