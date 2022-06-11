import 'package:flutter/painting.dart';

import '../../../domain/interpreter/avatar_animation.dart';

mixin AvatarPathPainter {
  final double avatarSize = 15;

  Path drawArmpath(Arm arm, Size size) {
    final Path path = Path();
    path.moveTo(size.width * arm.a0.x, size.height * arm.a0.y);
    path.lineTo(size.width * arm.a0.x + avatarSize / 2, size.height * arm.a0.y);
    path.lineTo(size.width * arm.a1.x + avatarSize / 2, size.height * arm.a1.y);

    path.lineTo(size.width * arm.a1.x - avatarSize / 2, size.height * arm.a1.y);
    path.lineTo(size.width * arm.a0.x - avatarSize / 2, size.height * arm.a0.y);
    path.close();
    return path;
  }

  Path drawWrist(Arm arm, Size size) {
    final Path path = Path();
    path.moveTo(size.width * arm.a1.x + avatarSize / 2, size.height * arm.a1.y);
    path.lineTo(size.width * arm.a2.x + avatarSize / 2, size.height * arm.a2.y);
    path.lineTo(size.width * arm.a2.x - avatarSize / 2, size.height * arm.a2.y);
    path.lineTo(size.width * arm.a1.x - avatarSize / 2, size.height * arm.a1.y);
    path.close();

    return path;
  }

  Path drawLegs(Leg left, Leg right, Size size) {
    final Path path = Path();
    path.moveTo(
        size.width * left.l0.x - avatarSize / 2, size.height * left.l0.y);
    path.lineTo(
        size.width * left.l1.x - avatarSize / 2, size.height * left.l1.y);
    path.lineTo(
        size.width * left.l3.x - avatarSize / 2, size.height * left.l3.y);
    path.lineTo(
        size.width * left.l3.x + avatarSize / 2, size.height * left.l3.y);
    path.lineTo(
        size.width * left.l1.x + avatarSize / 2, size.height * left.l1.y);
    path.lineTo(size.width * ((left.l0.x + right.l0.x) / 2),
        size.height * left.l0.y + avatarSize);
    path.lineTo(
        size.width * right.l1.x - avatarSize / 2, size.height * left.l1.y);
    path.lineTo(
        size.width * right.l2.x - avatarSize / 2, size.height * left.l2.y);
    path.lineTo(
        size.width * right.l2.x + avatarSize / 2, size.height * left.l2.y);
    path.lineTo(
        size.width * right.l1.x + avatarSize / 2, size.height * left.l1.y);
    path.lineTo(
        size.width * right.l0.x + avatarSize / 2, size.height * left.l0.y);
    path.close();

    return path;
  }

  Path drawBody(
      Arm leftArm, Arm rightArm, Leg leftLeg, Leg rightLeg, Size size) {
    final Path path = Path();
    path.moveTo(
        size.width * leftArm.a0.x + avatarSize / 2, size.height * leftArm.a0.y);
    path.lineTo(
        size.width * leftLeg.l0.x - avatarSize / 2, size.height * leftLeg.l0.y);
    path.lineTo(size.width * rightLeg.l0.x + avatarSize / 2,
        size.height * rightLeg.l0.y);
    path.lineTo(size.width * rightArm.a0.x - avatarSize / 2,
        size.height * rightArm.a0.y);
    path.close();
    return path;
  }

  Path drawHand(Hand hand, Arm arm, Size size) {
    final Path path = Path();
    final int sign = hand.h4.x > arm.a2.x ? 1 : -1;

    path.moveTo(size.width * arm.a2.x + (avatarSize / 4 * sign),
        size.height * arm.a2.y);
    path.lineTo(size.width * hand.h1.x + (avatarSize / 4 * sign),
        size.height * hand.h1.y);
    path.lineTo(size.width * hand.h2.x + (avatarSize / 4 * sign),
        size.height * hand.h2.y);
    path.lineTo(size.width * hand.h3.x + (avatarSize / 4 * sign),
        size.height * hand.h3.y);

    path.quadraticBezierTo(
        size.width * hand.h4.x,
        size.height * hand.h4.y,
        size.width * hand.h3.x - (avatarSize / 4 * sign),
        size.height * hand.h3.y);

    path.lineTo(size.width * hand.h3.x - (avatarSize / 4 * sign),
        size.height * hand.h3.y);
    path.lineTo(size.width * hand.h2.x - (avatarSize / 4 * sign),
        size.height * hand.h2.y);
    path.lineTo(size.width * hand.h1.x - (avatarSize / 4 * sign),
        size.height * hand.h1.y);
    path.lineTo(size.width * hand.h5.x + (avatarSize / 4 * sign),
        size.height * hand.h5.y);
    path.lineTo(size.width * hand.h6.x + (avatarSize / 4 * sign),
        size.height * hand.h6.y);
    path.lineTo(size.width * hand.h7.x + (avatarSize / 4 * sign),
        size.height * hand.h7.y);
    path.lineTo(size.width * hand.h8.x + (avatarSize / 4 * sign),
        size.height * hand.h8.y);

    path.quadraticBezierTo(
        size.width * hand.h8.x,
        size.height * hand.h8.y,
        size.width * hand.h7.x - (avatarSize / 4 * sign),
        size.height * hand.h7.y);

    path.lineTo(size.width * hand.h6.x - (avatarSize / 4 * sign),
        size.height * hand.h6.y);
    path.lineTo(
        size.width * ((hand.h5.x + hand.h9.x) / 2), size.height * hand.h5.y);
    path.lineTo(size.width * hand.h10.x + (avatarSize / 4 * sign),
        size.height * hand.h10.y);
    path.lineTo(size.width * hand.h11.x + (avatarSize / 4 * sign),
        size.height * hand.h11.y);
    path.quadraticBezierTo(
        size.width * hand.h12.x,
        size.height * hand.h12.y,
        size.width * hand.h11.x - (avatarSize / 4 * sign),
        size.height * hand.h11.y);

    path.lineTo(size.width * hand.h10.x - (avatarSize / 4 * sign),
        size.height * hand.h10.y);
    path.lineTo(
        size.width * ((hand.h9.x + hand.h13.x) / 2), size.height * hand.h9.y);

    path.lineTo(size.width * hand.h14.x + (avatarSize / 4 * sign),
        size.height * hand.h14.y);
    path.lineTo(size.width * hand.h15.x + (avatarSize / 4 * sign),
        size.height * hand.h15.y);
    path.quadraticBezierTo(
        size.width * hand.h16.x,
        size.height * hand.h16.y,
        size.width * hand.h15.x - (avatarSize / 4 * sign),
        size.height * hand.h15.y);

    path.lineTo(size.width * hand.h14.x - (avatarSize / 4 * sign),
        size.height * hand.h14.y);

    path.lineTo(
        size.width * ((hand.h13.x + hand.h17.x) / 2), size.height * hand.h13.y);

    path.lineTo(size.width * hand.h18.x + (avatarSize / 4 * sign),
        size.height * hand.h18.y);
    path.lineTo(size.width * hand.h19.x + (avatarSize / 4 * sign),
        size.height * hand.h19.y);
    path.quadraticBezierTo(
        size.width * hand.h20.x,
        size.height * hand.h20.y,
        size.width * hand.h18.x - (avatarSize / 4 * sign),
        size.height * hand.h18.y);

    path.lineTo(size.width * hand.h17.x - (avatarSize / 4 * sign),
        size.height * hand.h17.y);

    path.lineTo(size.width * arm.a2.x - (avatarSize / 4 * sign),
        size.height * arm.a2.y);
    return path;
  }

  // Path drawFace(Face face, Size size) {
  //   final Path path = Path();
  //   path.moveTo(
  //       size.width * face.f0.x, size.height * face.f0.y - avatarSize / 2);
  //   path.cubicTo(
  //       size.width * face.f1.x + avatarSize,
  //       size.height * face.f1.y - avatarSize,
  //       size.width * face.f2.x + avatarSize,
  //       size.height * face.f1.y + avatarSize,
  //       size.width * face.f2.x + avatarSize / 2,
  //       size.height * face.f2.y + avatarSize / 2);

  //   return path;
  // }

  Path drawNeck(Face face, Arm left, Arm right, Size size) {
    final Path path = Path();
    path.moveTo(size.width * ((left.a0.x + right.a0.x) / 2) - avatarSize / 2,
        size.height * left.a0.y);
    path.lineTo(size.width * ((left.a0.x + right.a0.x) / 2) + avatarSize / 2,
        size.height * right.a0.y);
    path.lineTo(
        size.width * face.f2.x + avatarSize / 2, size.height * face.f2.y);
    path.lineTo(
        size.width * face.f2.x - avatarSize / 2, size.height * face.f2.y);
    path.close();

    return path;
  }
}
