import 'package:flutter/material.dart';

import '../../../domain/interpreter/avatar_animation.dart';

class AvatarPainter extends CustomPainter {
  final FrameAnimation animation;

  AvatarPainter({required this.animation});
  num getpoint(double normal, num animated) {
    animated = animated == 0 ? normal : animated;

    return animated;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint whitePainter = Paint()..style = PaintingStyle.fill;
    whitePainter.color = const Color(0xffffffff);
    final Paint blackPainter = Paint()..style = PaintingStyle.fill;
    blackPainter.color = const Color(0xff2c2c2c);
    final Paint yellowPainter = Paint()..style = PaintingStyle.fill;
    yellowPainter.color = const Color(0xffde9d01);
    final Paint orangePainter = Paint()..style = PaintingStyle.fill;
    orangePainter.color = const Color(0xffbe8005).withOpacity(1.0);
    final Paint greenPainter = Paint()..style = PaintingStyle.fill;
    greenPainter.color = const Color(0xff009661).withOpacity(1.0);
    final Paint greyPainter = Paint()..style = PaintingStyle.fill;
    greyPainter.color = const Color(0xffe1e1e1).withOpacity(1.0);
    final Paint skinPainter = Paint()..style = PaintingStyle.fill;
    skinPainter.color = const Color(0xffffae82).withOpacity(1.0);
    final Paint skinShadowPainter = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black
      ..color = const Color(0xfff88868);
    final Paint armsPainter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1106509;
    armsPainter.color = const Color(0xff009661).withOpacity(1.0);
    armsPainter.strokeCap = StrokeCap.round;

    final Paint fingersPainter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02529164;
    fingersPainter.color = const Color(0xffffae82).withOpacity(1.0);
    fingersPainter.strokeCap = StrokeCap.round;
//body blvic
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2384338, size.height * 0.5322402);
    path_0.cubicTo(
        size.width * 0.2380987,
        size.height * 0.4973610,
        size.width * 0.2641744,
        size.height * 0.4739625,
        size.width * 0.2641744,
        size.height * 0.4739625);
    path_0.cubicTo(
        size.width * 0.4334387,
        size.height * 0.4703465,
        size.width * 0.6996111,
        size.height * 0.4739625,
        size.width * 0.6996111,
        size.height * 0.4739625);
    path_0.cubicTo(
        size.width * 0.6999810,
        size.height * 0.4743003,
        size.width * 0.7003414,
        size.height * 0.4746369,
        size.width * 0.7007050,
        size.height * 0.4749736);
    path_0.cubicTo(
        size.width * 0.7007050,
        size.height * 0.4749736,
        size.width * 0.7280642,
        size.height * 0.5068154,
        size.width * 0.7120546,
        size.height * 0.5322445);
    path_0.cubicTo(
        size.width * 0.5473807,
        size.height * 0.5660061,
        size.width * 0.3886915,
        size.height * 0.5637805,
        size.width * 0.2384307,
        size.height * 0.5322445);

    canvas.drawPath(path_0, blackPainter);
// right leg
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7152192, size.height * 0.5256453);
    path_1.cubicTo(
        size.width * 0.7152192,
        size.height * 0.5256453,
        size.width * 0.7516139,
        size.height * 0.6897923,
        size.width * 0.7473428,
        size.height * 0.7307678);
    path_1.lineTo(size.width * 0.7800006, size.height * 0.9459370);
    path_1.lineTo(size.width * 0.6718789, size.height * 0.9438137);
    path_1.cubicTo(
        size.width * 0.6484114,
        size.height * 0.8452349,
        size.width * 0.6082166,
        size.height * 0.7957756,
        size.width * 0.6094053,
        size.height * 0.7321816);
    path_1.lineTo(size.width * 0.5168063, size.height * 0.5407922);
    path_1.cubicTo(
        size.width * 0.5168063,
        size.height * 0.5407922,
        size.width * 0.6068035,
        size.height * 0.5263560,
        size.width * 0.7152161,
        size.height * 0.5256411);

    canvas.drawPath(path_1, blackPainter);
// right shoe
    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6679586, size.height * 0.9420291);
    path_2.cubicTo(
        size.width * 0.6710126,
        size.height * 0.9278859,
        size.width * 0.7091745,
        size.height * 0.9201809,
        size.width * 0.7481237,
        size.height * 0.9237159);
    path_2.cubicTo(
        size.width * 0.7862002,
        size.height * 0.9271689,
        size.width * 0.7907844,
        size.height * 0.9481978,
        size.width * 0.7907844,
        size.height * 0.9481978);
    path_2.arcToPoint(Offset(size.width * 0.8474440, size.height * 0.9861263),
        radius:
            Radius.elliptical(size.width * 0.1952262, size.height * 0.06579090),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(
        size.width * 0.8476969,
        size.height * 0.9866590,
        size.width * 0.8479593,
        size.height * 0.9871917,
        size.width * 0.8481237,
        size.height * 0.9877627);
    path_2.arcToPoint(Offset(size.width * 0.8267775, size.height * 0.9970903),
        radius: Radius.elliptical(
            size.width * 0.02533907, size.height * 0.008539223),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(
        size.width * 0.7592457,
        size.height * 1.000794,
        size.width * 0.6936803,
        size.height * 1.001076,
        size.width * 0.6303152,
        size.height * 0.9972587);
    path_2.arcToPoint(Offset(size.width * 0.6094780, size.height * 0.9878767),
        radius: Radius.elliptical(
            size.width * 0.02513989, size.height * 0.008472102),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(
        size.width * 0.6095666,
        size.height * 0.9877084,
        size.width * 0.6095666,
        size.height * 0.9875369,
        size.width * 0.6096488,
        size.height * 0.9873685);
    path_2.cubicTo(
        size.width * 0.6139199,
        size.height * 0.9766569,
        size.width * 0.6227024,
        size.height * 0.9570045,
        size.width * 0.6623155,
        size.height * 0.9497086);
    path_2.close();

    canvas.drawPath(path_2, yellowPainter);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6830293, size.height * 0.9583234);
    path_3.lineTo(size.width * 0.6796213, size.height * 0.9557377);
    path_3.cubicTo(
        size.width * 0.6819955,
        size.height * 0.9553957,
        size.width * 0.7380544,
        size.height * 0.9474403,
        size.width * 0.7789099,
        size.height * 0.9562704);
    path_3.lineTo(size.width * 0.7742531, size.height * 0.9586303);
    path_3.cubicTo(
        size.width * 0.7372167,
        size.height * 0.9506259,
        size.width * 0.6835826,
        size.height * 0.9582446,
        size.width * 0.6830388,
        size.height * 0.9583234);

    canvas.drawPath(path_3, whitePainter);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.6900541, size.height * 0.9579591);
    path_4.arcToPoint(Offset(size.width * 0.6790206, size.height * 0.9605693),
        radius: Radius.elliptical(
            size.width * 0.009582372, size.height * 0.003229243),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(size.width * 0.6728241, size.height * 0.9592972),
        radius: Radius.elliptical(
            size.width * 0.009430622, size.height * 0.003178104),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(size.width * 0.6711454, size.height * 0.9569182),
        radius: Radius.elliptical(
            size.width * 0.009430622, size.height * 0.003178104),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(size.width * 0.6821757, size.height * 0.9543079),
        radius: Radius.elliptical(
            size.width * 0.009576049, size.height * 0.003227112),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(size.width * 0.6883690, size.height * 0.9555864),
        radius: Radius.elliptical(
            size.width * 0.009443268, size.height * 0.003182365),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(size.width * 0.6900541, size.height * 0.9579644),
        radius: Radius.elliptical(
            size.width * 0.009443268, size.height * 0.003182365),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_4, whitePainter);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7864184, size.height * 0.9571973);
    path_5.arcToPoint(Offset(size.width * 0.7753881, size.height * 0.9598044),
        radius: Radius.elliptical(
            size.width * 0.009563403, size.height * 0.003222851),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_5.arcToPoint(Offset(size.width * 0.7691885, size.height * 0.9585323),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_5.arcToPoint(Offset(size.width * 0.7675097, size.height * 0.9561532),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_5.arcToPoint(Offset(size.width * 0.7785432, size.height * 0.9535462),
        radius: Radius.elliptical(
            size.width * 0.009566564, size.height * 0.003223916),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_5.arcToPoint(Offset(size.width * 0.7847397, size.height * 0.9548183),
        radius: Radius.elliptical(
            size.width * 0.009430622, size.height * 0.003178104),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_5.arcToPoint(Offset(size.width * 0.7864184, size.height * 0.9571973),
        radius: Radius.elliptical(
            size.width * 0.009430622, size.height * 0.003178104),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_5, whitePainter);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6840030, size.height * 0.9503553);
    path_6.lineTo(size.width * 0.6805887, size.height * 0.9477727);
    path_6.cubicTo(
        size.width * 0.6829534,
        size.height * 0.9474297,
        size.width * 0.7390187,
        size.height * 0.9394722,
        size.width * 0.7798584,
        size.height * 0.9483054);
    path_6.lineTo(size.width * 0.7752174, size.height * 0.9506674);
    path_6.cubicTo(
        size.width * 0.7381809,
        size.height * 0.9426631,
        size.width * 0.6845373,
        size.height * 0.9502818,
        size.width * 0.6840030,
        size.height * 0.9503574);

    canvas.drawPath(path_6, whitePainter);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.6910310, size.height * 0.9499941);
    path_7.arcToPoint(Offset(size.width * 0.6800006, size.height * 0.9526012),
        radius: Radius.elliptical(
            size.width * 0.009566564, size.height * 0.003223916),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_7.arcToPoint(Offset(size.width * 0.6738010, size.height * 0.9513291),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_7.arcToPoint(Offset(size.width * 0.6721223, size.height * 0.9489500),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_7.arcToPoint(Offset(size.width * 0.6831526, size.height * 0.9463430),
        radius: Radius.elliptical(
            size.width * 0.009566564, size.height * 0.003223916),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_7.arcToPoint(Offset(size.width * 0.6893491, size.height * 0.9476161),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_7.arcToPoint(Offset(size.width * 0.6910310, size.height * 0.9499941),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_7, whitePainter);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.7873921, size.height * 0.9492291);
    path_8.arcToPoint(Offset(size.width * 0.7763618, size.height * 0.9518394),
        radius: Radius.elliptical(
            size.width * 0.009569726, size.height * 0.003224982),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_8.arcToPoint(Offset(size.width * 0.7701653, size.height * 0.9505673),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_8.arcToPoint(Offset(size.width * 0.7684834, size.height * 0.9481882),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_8.arcToPoint(Offset(size.width * 0.7795169, size.height * 0.9455780),
        radius: Radius.elliptical(
            size.width * 0.009579210, size.height * 0.003228178),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_8.arcToPoint(Offset(size.width * 0.7857102, size.height * 0.9468565),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_8.arcToPoint(Offset(size.width * 0.7873921, size.height * 0.9492345),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_8, whitePainter);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.6830293, size.height * 0.9662618);
    path_9.lineTo(size.width * 0.6796213, size.height * 0.9636782);
    path_9.cubicTo(
        size.width * 0.6819955,
        size.height * 0.9633351,
        size.width * 0.7380544,
        size.height * 0.9553776,
        size.width * 0.7789099,
        size.height * 0.9642109);
    path_9.lineTo(size.width * 0.7742531, size.height * 0.9665707);
    path_9.cubicTo(
        size.width * 0.7372167,
        size.height * 0.9585664,
        size.width * 0.6835826,
        size.height * 0.9661872,
        size.width * 0.6830388,
        size.height * 0.9662639);

    canvas.drawPath(path_9, whitePainter);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.6900541, size.height * 0.9659027);
    path_10.arcToPoint(Offset(size.width * 0.6790206, size.height * 0.9685098),
        radius: Radius.elliptical(
            size.width * 0.009572887, size.height * 0.003226047),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_10.arcToPoint(Offset(size.width * 0.6728241, size.height * 0.9672377),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_10.arcToPoint(Offset(size.width * 0.6711454, size.height * 0.9648586),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_10.arcToPoint(Offset(size.width * 0.6821757, size.height * 0.9622516),
        radius: Radius.elliptical(
            size.width * 0.009563403, size.height * 0.003222851),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_10.arcToPoint(Offset(size.width * 0.6883722, size.height * 0.9635248),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_10.arcToPoint(Offset(size.width * 0.6900541, size.height * 0.9659027),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_10, whitePainter);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.7864152, size.height * 0.9651356);
    path_11.arcToPoint(Offset(size.width * 0.7753849, size.height * 0.9677459),
        radius: Radius.elliptical(
            size.width * 0.009576049, size.height * 0.003227112),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_11.arcToPoint(Offset(size.width * 0.7691853, size.height * 0.9664674),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_11.arcToPoint(Offset(size.width * 0.7675066, size.height * 0.9640916),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_11.arcToPoint(Offset(size.width * 0.7785400, size.height * 0.9614845),
        radius: Radius.elliptical(
            size.width * 0.009572887, size.height * 0.003226047),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_11.arcToPoint(Offset(size.width * 0.7847333, size.height * 0.9627630),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_11.arcToPoint(Offset(size.width * 0.7864152, size.height * 0.9651410),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_11, whitePainter);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.7536404, size.height * 0.9328315);
    path_12.cubicTo(
        size.width * 0.7536404,
        size.height * 0.9328315,
        size.width * 0.7248269,
        size.height * 0.9295287,
        size.width * 0.7002750,
        size.height * 0.9335379);
    path_12.arcToPoint(Offset(size.width * 0.7002750, size.height * 0.9400368),
        radius: Radius.elliptical(
            size.width * 0.02687237, size.height * 0.009055944),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_12.cubicTo(
        size.width * 0.7002750,
        size.height * 0.9400368,
        size.width * 0.7334008,
        size.height * 0.9382725,
        size.width * 0.7543359,
        size.height * 0.9396267);
    path_12.cubicTo(
        size.width * 0.7543359,
        size.height * 0.9396267,
        size.width * 0.7582878,
        size.height * 0.9357113,
        size.width * 0.7536467,
        size.height * 0.9328294);

    canvas.drawPath(path_12, whitePainter);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.8267807, size.height * 0.9970893);
    path_13.cubicTo(
        size.width * 0.7592394,
        size.height * 1.000793,
        size.width * 0.6936613,
        size.height * 1.001075,
        size.width * 0.6303026,
        size.height * 0.9972576);
    path_13.arcToPoint(Offset(size.width * 0.6094654, size.height * 0.9878757),
        radius: Radius.elliptical(
            size.width * 0.02513989, size.height * 0.008472102),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.cubicTo(
        size.width * 0.6095476,
        size.height * 0.9877073,
        size.width * 0.6095476,
        size.height * 0.9875358,
        size.width * 0.6096298,
        size.height * 0.9873675);
    path_13.arcToPoint(Offset(size.width * 0.8474313, size.height * 0.9861252),
        radius:
            Radius.elliptical(size.width * 0.4359205, size.height * 0.1469045),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_13.cubicTo(
        size.width * 0.8476842,
        size.height * 0.9866579,
        size.width * 0.8479403,
        size.height * 0.9871906,
        size.width * 0.8481110,
        size.height * 0.9877617);
    path_13.arcToPoint(Offset(size.width * 0.8267649, size.height * 0.9970893),
        radius: Radius.elliptical(
            size.width * 0.02533907, size.height * 0.008539223),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_13, orangePainter);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.2389776, size.height * 0.5256453);
    path_14.cubicTo(
        size.width * 0.2389776,
        size.height * 0.5256453,
        size.width * 0.2025829,
        size.height * 0.6897923,
        size.width * 0.2068509,
        size.height * 0.7307678);
    path_14.lineTo(size.width * 0.1741962, size.height * 0.9459370);
    path_14.lineTo(size.width * 0.2823180, size.height * 0.9438137);
    path_14.cubicTo(
        size.width * 0.3057855,
        size.height * 0.8452349,
        size.width * 0.3459834,
        size.height * 0.7957756,
        size.width * 0.3447915,
        size.height * 0.7321816);
    path_14.lineTo(size.width * 0.4373747, size.height * 0.5407922);
    path_14.cubicTo(
        size.width * 0.4373747,
        size.height * 0.5407922,
        size.width * 0.3473776,
        size.height * 0.5263560,
        size.width * 0.2389681,
        size.height * 0.5256411);

    canvas.drawPath(path_14, blackPainter);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.2862477, size.height * 0.9420291);
    path_15.cubicTo(
        size.width * 0.2831937,
        size.height * 0.9278859,
        size.width * 0.2450318,
        size.height * 0.9201809,
        size.width * 0.2060826,
        size.height * 0.9237127);
    path_15.cubicTo(
        size.width * 0.1679966,
        size.height * 0.9271689,
        size.width * 0.1634220,
        size.height * 0.9481978,
        size.width * 0.1634220,
        size.height * 0.9481978);
    path_15.arcToPoint(Offset(size.width * 0.1067655, size.height * 0.9861241),
        radius:
            Radius.elliptical(size.width * 0.1952262, size.height * 0.06579090),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_15.cubicTo(
        size.width * 0.1065094,
        size.height * 0.9866568,
        size.width * 0.1062470,
        size.height * 0.9871949,
        size.width * 0.1060826,
        size.height * 0.9877606);
    path_15.arcToPoint(Offset(size.width * 0.1274288, size.height * 0.9970882),
        radius: Radius.elliptical(
            size.width * 0.02533907, size.height * 0.008539223),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_15.cubicTo(
        size.width * 0.1949701,
        size.height * 1.000792,
        size.width * 0.2605387,
        size.height * 1.001075,
        size.width * 0.3238911,
        size.height * 0.9972576);
    path_15.arcToPoint(Offset(size.width * 0.3447314, size.height * 0.9878757),
        radius: Radius.elliptical(
            size.width * 0.02514622, size.height * 0.008474233),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_15.cubicTo(
        size.width * 0.3446398,
        size.height * 0.9877073,
        size.width * 0.3446398,
        size.height * 0.9875358,
        size.width * 0.3445576,
        size.height * 0.9873675);
    path_15.cubicTo(
        size.width * 0.3402864,
        size.height * 0.9766559,
        size.width * 0.3315071,
        size.height * 0.9570034,
        size.width * 0.2918909,
        size.height * 0.9497075);
    path_15.close();

    canvas.drawPath(path_15, yellowPainter);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.2711612, size.height * 0.9583234);
    path_16.lineTo(size.width * 0.2745787, size.height * 0.9557377);
    path_16.cubicTo(
        size.width * 0.2722140,
        size.height * 0.9553957,
        size.width * 0.2161456,
        size.height * 0.9474403,
        size.width * 0.1753090,
        size.height * 0.9562704);
    path_16.lineTo(size.width * 0.1799659, size.height * 0.9586303);
    path_16.cubicTo(
        size.width * 0.2170023,
        size.height * 0.9506259,
        size.width * 0.2706364,
        size.height * 0.9582446,
        size.width * 0.2711770,
        size.height * 0.9583234);

    canvas.drawPath(path_16, whitePainter);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.2641491, size.height * 0.9579591);
    path_17.arcToPoint(Offset(size.width * 0.2751794, size.height * 0.9605693),
        radius: Radius.elliptical(
            size.width * 0.009579210, size.height * 0.003228178),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_17.arcToPoint(Offset(size.width * 0.2813759, size.height * 0.9592972),
        radius: Radius.elliptical(
            size.width * 0.009430622, size.height * 0.003178104),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_17.arcToPoint(Offset(size.width * 0.2830578, size.height * 0.9569182),
        radius: Radius.elliptical(
            size.width * 0.009430622, size.height * 0.003178104),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_17.arcToPoint(Offset(size.width * 0.2720274, size.height * 0.9543079),
        radius: Radius.elliptical(
            size.width * 0.009576049, size.height * 0.003227112),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_17.arcToPoint(Offset(size.width * 0.2658342, size.height * 0.9555811),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_17.arcToPoint(Offset(size.width * 0.2641491, size.height * 0.9579591),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_17, whitePainter);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.1677816, size.height * 0.9571973);
    path_18.arcToPoint(Offset(size.width * 0.1788119, size.height * 0.9598044),
        radius: Radius.elliptical(
            size.width * 0.009563403, size.height * 0.003222851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_18.arcToPoint(Offset(size.width * 0.1850115, size.height * 0.9585323),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_18.arcToPoint(Offset(size.width * 0.1866903, size.height * 0.9561532),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_18.arcToPoint(Offset(size.width * 0.1756663, size.height * 0.9535440),
        radius: Radius.elliptical(
            size.width * 0.009563403, size.height * 0.003222851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_18.arcToPoint(Offset(size.width * 0.1694635, size.height * 0.9548225),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_18.arcToPoint(Offset(size.width * 0.1677816, size.height * 0.9572026),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_18, whitePainter);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.2702128, size.height * 0.9503553);
    path_19.lineTo(size.width * 0.2736303, size.height * 0.9477727);
    path_19.cubicTo(
        size.width * 0.2712655,
        size.height * 0.9474297,
        size.width * 0.2152003,
        size.height * 0.9394722,
        size.width * 0.1743606,
        size.height * 0.9483054);
    path_19.lineTo(size.width * 0.1789890, size.height * 0.9506674);
    path_19.cubicTo(
        size.width * 0.2160254,
        size.height * 0.9426631,
        size.width * 0.2696690,
        size.height * 0.9502818,
        size.width * 0.2702001,
        size.height * 0.9503574);

    canvas.drawPath(path_19, whitePainter);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.2631754, size.height * 0.9499941);
    path_20.arcToPoint(Offset(size.width * 0.2742057, size.height * 0.9526012),
        radius: Radius.elliptical(
            size.width * 0.009569726, size.height * 0.003224982),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_20.arcToPoint(Offset(size.width * 0.2804053, size.height * 0.9513291),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_20.arcToPoint(Offset(size.width * 0.2820840, size.height * 0.9489500),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_20.arcToPoint(Offset(size.width * 0.2710537, size.height * 0.9463430),
        radius: Radius.elliptical(
            size.width * 0.009563403, size.height * 0.003222851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_20.arcToPoint(Offset(size.width * 0.2648604, size.height * 0.9476161),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_20.arcToPoint(Offset(size.width * 0.2631785, size.height * 0.9499941),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_20, whitePainter);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.1668142, size.height * 0.9492291);
    path_21.arcToPoint(Offset(size.width * 0.1778445, size.height * 0.9518394),
        radius: Radius.elliptical(
            size.width * 0.009569726, size.height * 0.003224982),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_21.arcToPoint(Offset(size.width * 0.1840441, size.height * 0.9505673),
        radius: Radius.elliptical(
            size.width * 0.009424299, size.height * 0.003175973),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_21.arcToPoint(Offset(size.width * 0.1857229, size.height * 0.9481882),
        radius: Radius.elliptical(
            size.width * 0.009424299, size.height * 0.003175973),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_21.arcToPoint(Offset(size.width * 0.1746925, size.height * 0.9455780),
        radius: Radius.elliptical(
            size.width * 0.009569726, size.height * 0.003224982),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_21.arcToPoint(Offset(size.width * 0.1684993, size.height * 0.9468565),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_21.arcToPoint(Offset(size.width * 0.1668142, size.height * 0.9492345),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_21, whitePainter);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.2711612, size.height * 0.9662618);
    path_22.lineTo(size.width * 0.2745787, size.height * 0.9636792);
    path_22.cubicTo(
        size.width * 0.2722140,
        size.height * 0.9633362,
        size.width * 0.2161456,
        size.height * 0.9553787,
        size.width * 0.1753090,
        size.height * 0.9642119);
    path_22.lineTo(size.width * 0.1799659, size.height * 0.9665718);
    path_22.cubicTo(
        size.width * 0.2170023,
        size.height * 0.9585674,
        size.width * 0.2706364,
        size.height * 0.9661883,
        size.width * 0.2711770,
        size.height * 0.9662650);

    canvas.drawPath(path_22, whitePainter);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.2641491, size.height * 0.9659027);
    path_23.arcToPoint(Offset(size.width * 0.2751794, size.height * 0.9685098),
        radius: Radius.elliptical(
            size.width * 0.009569726, size.height * 0.003224982),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_23.arcToPoint(Offset(size.width * 0.2813790, size.height * 0.9672377),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_23.arcToPoint(Offset(size.width * 0.2830578, size.height * 0.9648586),
        radius: Radius.elliptical(
            size.width * 0.009427460, size.height * 0.003177038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_23.arcToPoint(Offset(size.width * 0.2720274, size.height * 0.9622516),
        radius: Radius.elliptical(
            size.width * 0.009563403, size.height * 0.003222851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_23.arcToPoint(Offset(size.width * 0.2658310, size.height * 0.9635301),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_23.arcToPoint(Offset(size.width * 0.2641491, size.height * 0.9659027),
        radius: Radius.elliptical(
            size.width * 0.009436945, size.height * 0.003180235),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_23, whitePainter);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.1677816, size.height * 0.9651356);
    path_24.arcToPoint(Offset(size.width * 0.1788119, size.height * 0.9677459),
        radius: Radius.elliptical(
            size.width * 0.009576049, size.height * 0.003227112),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_24.arcToPoint(Offset(size.width * 0.1850115, size.height * 0.9664674),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_24.arcToPoint(Offset(size.width * 0.1866903, size.height * 0.9640862),
        radius: Radius.elliptical(
            size.width * 0.009433783, size.height * 0.003179169),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_24.arcToPoint(Offset(size.width * 0.1756600, size.height * 0.9614792),
        radius: Radius.elliptical(
            size.width * 0.009569726, size.height * 0.003224982),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_24.arcToPoint(Offset(size.width * 0.1694667, size.height * 0.9627523),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_24.arcToPoint(Offset(size.width * 0.1677816, size.height * 0.9651356),
        radius: Radius.elliptical(
            size.width * 0.009440106, size.height * 0.003181300),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_24, whitePainter);
//shoe top white
    Path path_25 = Path();
    path_25.moveTo(size.width * 0.2005659, size.height * 0.9328315);
    path_25.cubicTo(
        size.width * 0.2005659,
        size.height * 0.9328315,
        size.width * 0.2293794,
        size.height * 0.9295287,
        size.width * 0.2539313,
        size.height * 0.9335379);
    path_25.arcToPoint(Offset(size.width * 0.2539313, size.height * 0.9400368),
        radius: Radius.elliptical(
            size.width * 0.02685024, size.height * 0.009048487),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_25.cubicTo(
        size.width * 0.2539313,
        size.height * 0.9400368,
        size.width * 0.2208055,
        size.height * 0.9382725,
        size.width * 0.1998704,
        size.height * 0.9396267);
    path_25.cubicTo(
        size.width * 0.1998704,
        size.height * 0.9396267,
        size.width * 0.1959186,
        size.height * 0.9357113,
        size.width * 0.2005596,
        size.height * 0.9328294);

    canvas.drawPath(path_25, whitePainter);
// shoe stripe
    Path path_26 = Path();
    path_26.moveTo(size.width * 0.1274256, size.height * 0.9970893);
    path_26.cubicTo(
        size.width * 0.1949701,
        size.height * 1.000792,
        size.width * 0.2605450,
        size.height * 1.001075,
        size.width * 0.3238880,
        size.height * 0.9972576);
    path_26.arcToPoint(Offset(size.width * 0.3447251, size.height * 0.9878757),
        radius: Radius.elliptical(
            size.width * 0.02513357, size.height * 0.008469972),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_26.cubicTo(
        size.width * 0.3446429,
        size.height * 0.9877073,
        size.width * 0.3446429,
        size.height * 0.9875358,
        size.width * 0.3445607,
        size.height * 0.9873675);
    path_26.arcToPoint(Offset(size.width * 0.1067655, size.height * 0.9861241),
        radius:
            Radius.elliptical(size.width * 0.4359173, size.height * 0.1469034),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_26.cubicTo(
        size.width * 0.1065094,
        size.height * 0.9866568,
        size.width * 0.1062565,
        size.height * 0.9871895,
        size.width * 0.1060826,
        size.height * 0.9877606);
    path_26.arcToPoint(Offset(size.width * 0.1274288, size.height * 0.9970882),
        radius: Radius.elliptical(
            size.width * 0.02533907, size.height * 0.008539223),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_26, orangePainter);
// body
    Path path_27 = Path();
    path_27.moveTo(size.width * 0.7208150, size.height * 0.4879087);
    path_27.cubicTo(
        size.width * 0.6726819,
        size.height * 0.4962551,
        size.width * 0.6280010,
        size.height * 0.5023982,
        size.width * 0.5832348,
        size.height * 0.5060962);
    path_27.arcToPoint(Offset(size.width * 0.4804021, size.height * 0.5102268),
        radius:
            Radius.elliptical(size.width * 0.4122854, size.height * 0.1389395),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_27.arcToPoint(Offset(size.width * 0.3901331, size.height * 0.5070210),
        radius:
            Radius.elliptical(size.width * 0.4008726, size.height * 0.1350934),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_27.cubicTo(
        size.width * 0.3422465,
        size.height * 0.5034593,
        size.width * 0.2950997,
        size.height * 0.4969891,
        size.width * 0.2427808,
        size.height * 0.4879087);
    path_27.lineTo(size.width * 0.2625747, size.height * 0.3518671);
    path_27.lineTo(size.width * 0.2604123, size.height * 0.1931750);
    path_27.lineTo(size.width * 0.3821283, size.height * 0.1823547);
    path_27.lineTo(size.width * 0.4187601, size.height * 0.1791191);
    path_27.arcToPoint(Offset(size.width * 0.4803642, size.height * 0.1764002),
        radius:
            Radius.elliptical(size.width * 0.2492112, size.height * 0.08398376),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_27.arcToPoint(Offset(size.width * 0.5419652, size.height * 0.1791191),
        radius:
            Radius.elliptical(size.width * 0.2492144, size.height * 0.08398483),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_27.lineTo(size.width * 0.5831969, size.height * 0.1827894);
    path_27.lineTo(size.width * 0.7003256, size.height * 0.1931750);
    path_27.lineTo(size.width * 0.6981885, size.height * 0.3518671);
    path_27.close();

    canvas.drawPath(path_27, greenPainter);
// whit t-shirt
    Path path_28 = Path();
    path_28.moveTo(size.width * 0.5832222, size.height * 0.1827809);
    path_28.lineTo(size.width * 0.5832222, size.height * 0.5060941);
    path_28.arcToPoint(Offset(size.width * 0.4803895, size.height * 0.5102236),
        radius:
            Radius.elliptical(size.width * 0.4124467, size.height * 0.1389938),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_28.arcToPoint(Offset(size.width * 0.3901205, size.height * 0.5070178),
        radius:
            Radius.elliptical(size.width * 0.4006987, size.height * 0.1350348),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_28.lineTo(size.width * 0.3899561, size.height * 0.4989708);
    path_28.lineTo(size.width * 0.3897095, size.height * 0.4905424);
    path_28.lineTo(size.width * 0.3892163, size.height * 0.4709677);
    path_28.lineTo(size.width * 0.3890519, size.height * 0.4625393);
    path_28.lineTo(size.width * 0.3885587, size.height * 0.4429912);
    path_28.lineTo(size.width * 0.3883121, size.height * 0.4345638);
    path_28.lineTo(size.width * 0.3879011, size.height * 0.4150158);
    path_28.lineTo(size.width * 0.3876545, size.height * 0.4066151);
    path_28.lineTo(size.width * 0.3871645, size.height * 0.3870670);
    path_28.lineTo(size.width * 0.3870001, size.height * 0.3786929);
    path_28.lineTo(size.width * 0.3865069, size.height * 0.3591182);
    path_28.lineTo(size.width * 0.3862603, size.height * 0.3507175);
    path_28.lineTo(size.width * 0.3857671, size.height * 0.3311428);
    path_28.lineTo(size.width * 0.3856027, size.height * 0.3227687);
    path_28.lineTo(size.width * 0.3851095, size.height * 0.3031653);
    path_28.lineTo(size.width * 0.3849451, size.height * 0.2948189);
    path_28.lineTo(size.width * 0.3844520, size.height * 0.2751899);
    path_28.lineTo(size.width * 0.3842054, size.height * 0.2668701);
    path_28.lineTo(size.width * 0.3837122, size.height * 0.2472411);
    path_28.lineTo(size.width * 0.3835478, size.height * 0.2389224);
    path_28.lineTo(size.width * 0.3830578, size.height * 0.2193190);
    path_28.lineTo(size.width * 0.3828934, size.height * 0.2109992);
    path_28.lineTo(size.width * 0.3824002, size.height * 0.1913425);
    path_28.lineTo(size.width * 0.3821536, size.height * 0.1830504);
    path_28.lineTo(size.width * 0.3821536, size.height * 0.1823441);
    path_28.lineTo(size.width * 0.4187854, size.height * 0.1791084);
    path_28.arcToPoint(Offset(size.width * 0.4803895, size.height * 0.1763895),
        radius:
            Radius.elliptical(size.width * 0.2492207, size.height * 0.08398696),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_28.arcToPoint(Offset(size.width * 0.5419905, size.height * 0.1791084),
        radius:
            Radius.elliptical(size.width * 0.2492333, size.height * 0.08399122),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_28.lineTo(size.width * 0.5828112, size.height * 0.1827521);
    path_28.close();

    canvas.drawPath(path_28, whitePainter);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.5832285, size.height * 0.1913958);
    path_29.lineTo(size.width * 0.5832285, size.height * 0.1996058);
    path_29.arcToPoint(Offset(size.width * 0.4824476, size.height * 0.2023247),
        radius:
            Radius.elliptical(size.width * 0.6022889, size.height * 0.2029703),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_29.arcToPoint(Offset(size.width * 0.3824065, size.height * 0.1999595),
        radius:
            Radius.elliptical(size.width * 0.7273245, size.height * 0.2451071),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_29.lineTo(size.width * 0.3821599, size.height * 0.1916674);
    path_29.cubicTo(
        size.width * 0.4287313,
        size.height * 0.1938963,
        size.width * 0.5045430,
        size.height * 0.1959354,
        size.width * 0.5828175,
        size.height * 0.1913681);
    path_29.close();

    canvas.drawPath(path_29, greyPainter);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.5832285, size.height * 0.2147707);
    path_30.lineTo(size.width * 0.5832285, size.height * 0.2230351);
    path_30.arcToPoint(Offset(size.width * 0.4839272, size.height * 0.2257540),
        radius:
            Radius.elliptical(size.width * 0.5936265, size.height * 0.2000511),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_30.arcToPoint(Offset(size.width * 0.3830767, size.height * 0.2232801),
        radius:
            Radius.elliptical(size.width * 0.7079764, size.height * 0.2385868),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_30.lineTo(size.width * 0.3829123, size.height * 0.2149604);
    path_30.cubicTo(
        size.width * 0.4295659,
        size.height * 0.2172713,
        size.width * 0.5051310,
        size.height * 0.2193925,
        size.width * 0.5832411,
        size.height * 0.2147707);

    canvas.drawPath(path_30, greyPainter);

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.5832285, size.height * 0.2388169);
    path_31.lineTo(size.width * 0.5832285, size.height * 0.2471367);
    path_31.arcToPoint(Offset(size.width * 0.4853214, size.height * 0.2498545),
        radius:
            Radius.elliptical(size.width * 0.5773766, size.height * 0.1945750),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_31.arcToPoint(Offset(size.width * 0.3837185, size.height * 0.2472454),
        radius:
            Radius.elliptical(size.width * 0.6799342, size.height * 0.2291367),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_31.lineTo(size.width * 0.3835541, size.height * 0.2389256);
    path_31.cubicTo(
        size.width * 0.4301255,
        size.height * 0.2413451,
        size.width * 0.5052701,
        size.height * 0.2435750,
        size.width * 0.5832285,
        size.height * 0.2388191);

    canvas.drawPath(path_31, greyPainter);

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.5832285, size.height * 0.2668691);
    path_32.lineTo(size.width * 0.5832285, size.height * 0.2751888);
    path_32.arcToPoint(Offset(size.width * 0.4865543, size.height * 0.2779077),
        radius:
            Radius.elliptical(size.width * 0.5624546, size.height * 0.1895462),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_32.arcToPoint(Offset(size.width * 0.3844583, size.height * 0.2751888),
        radius:
            Radius.elliptical(size.width * 0.6610604, size.height * 0.2227762),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_32.lineTo(size.width * 0.3842117, size.height * 0.2668691);
    path_32.cubicTo(
        size.width * 0.4307831,
        size.height * 0.2693706,
        size.width * 0.5055294,
        size.height * 0.2716815,
        size.width * 0.5832285,
        size.height * 0.2668691);

    canvas.drawPath(path_32, greyPainter);

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.5832285, size.height * 0.2949531);
    path_33.lineTo(size.width * 0.5832285, size.height * 0.3032452);
    path_33.arcToPoint(Offset(size.width * 0.4877209, size.height * 0.3059907),
        radius:
            Radius.elliptical(size.width * 0.5480383, size.height * 0.1846880),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_33.arcToPoint(Offset(size.width * 0.3851317, size.height * 0.3031632),
        radius:
            Radius.elliptical(size.width * 0.6427871, size.height * 0.2166182),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_33.lineTo(size.width * 0.3849673, size.height * 0.2948168);
    path_33.cubicTo(
        size.width * 0.4314565,
        size.height * 0.2974259,
        size.width * 0.5057096,
        size.height * 0.2997911,
        size.width * 0.5832443,
        size.height * 0.2949521);

    canvas.drawPath(path_33, greyPainter);

    Path path_34 = Path();
    path_34.moveTo(size.width * 0.5832285, size.height * 0.3229840);
    path_34.lineTo(size.width * 0.5832285, size.height * 0.3313026);
    path_34.arcToPoint(Offset(size.width * 0.4888559, size.height * 0.3340493),
        radius:
            Radius.elliptical(size.width * 0.5283424, size.height * 0.1780505),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_34.arcToPoint(Offset(size.width * 0.3857735, size.height * 0.3311396),
        radius:
            Radius.elliptical(size.width * 0.6369195, size.height * 0.2146408),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_34.lineTo(size.width * 0.3856091, size.height * 0.3227666);
    path_34.cubicTo(
        size.width * 0.4320161,
        size.height * 0.3254855,
        size.width * 0.5059404,
        size.height * 0.3279317,
        size.width * 0.5832285,
        size.height * 0.3229797);

    canvas.drawPath(path_34, greyPainter);

    Path path_35 = Path();
    path_35.moveTo(size.width * 0.5832285, size.height * 0.3510467);
    path_35.lineTo(size.width * 0.5832285, size.height * 0.3593665);
    path_35.arcToPoint(Offset(size.width * 0.4898391, size.height * 0.3621365),
        radius:
            Radius.elliptical(size.width * 0.5177832, size.height * 0.1744921),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_35.arcToPoint(Offset(size.width * 0.3865132, size.height * 0.3591182),
        radius:
            Radius.elliptical(size.width * 0.6115520, size.height * 0.2060920),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_35.lineTo(size.width * 0.3862666, size.height * 0.3507175);
    path_35.cubicTo(
        size.width * 0.4326736,
        size.height * 0.3535174,
        size.width * 0.5060858,
        size.height * 0.3560445,
        size.width * 0.5832253,
        size.height * 0.3510435);

    canvas.drawPath(path_35, greyPainter);

    Path path_36 = Path();
    path_36.moveTo(size.width * 0.5832285, size.height * 0.3790988);
    path_36.lineTo(size.width * 0.5832285, size.height * 0.3874186);
    path_36.arcToPoint(Offset(size.width * 0.4908255, size.height * 0.3902185),
        radius:
            Radius.elliptical(size.width * 0.5013752, size.height * 0.1689626),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_36.arcToPoint(Offset(size.width * 0.3871866, size.height * 0.3870681),
        radius:
            Radius.elliptical(size.width * 0.5874933, size.height * 0.1979843),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_36.lineTo(size.width * 0.3870222, size.height * 0.3786940);
    path_36.cubicTo(
        size.width * 0.4333470,
        size.height * 0.3815759,
        size.width * 0.5063640,
        size.height * 0.3841585,
        size.width * 0.5832443,
        size.height * 0.3791020);

    canvas.drawPath(path_36, greyPainter);

    Path path_37 = Path();
    path_37.moveTo(size.width * 0.5832285, size.height * 0.4071616);
    path_37.lineTo(size.width * 0.5832285, size.height * 0.4155091);
    path_37.arcToPoint(Offset(size.width * 0.4916474, size.height * 0.4182791),
        radius:
            Radius.elliptical(size.width * 0.4980494, size.height * 0.1678418),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_37.arcToPoint(Offset(size.width * 0.3879074, size.height * 0.4150169),
        radius:
            Radius.elliptical(size.width * 0.5713382, size.height * 0.1925400),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_37.lineTo(size.width * 0.3876608, size.height * 0.4066161);
    path_37.cubicTo(
        size.width * 0.4339066,
        size.height * 0.4096344,
        size.width * 0.5065948,
        size.height * 0.4122713,
        size.width * 0.5832285,
        size.height * 0.4071595);

    canvas.drawPath(path_37, greyPainter);

    Path path_38 = Path();
    path_38.moveTo(size.width * 0.5832285, size.height * 0.4352137);
    path_38.lineTo(size.width * 0.5832285, size.height * 0.4435335);
    path_38.arcToPoint(Offset(size.width * 0.4924694, size.height * 0.4463611),
        radius:
            Radius.elliptical(size.width * 0.4832601, size.height * 0.1628578),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_38.arcToPoint(Offset(size.width * 0.3885650, size.height * 0.4429891),
        radius:
            Radius.elliptical(size.width * 0.5567639, size.height * 0.1876285),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_38.lineTo(size.width * 0.3883184, size.height * 0.4345617);
    path_38.cubicTo(
        size.width * 0.4345610,
        size.height * 0.4376610,
        size.width * 0.5067592,
        size.height * 0.4403799,
        size.width * 0.5832285,
        size.height * 0.4352137);

    canvas.drawPath(path_38, greyPainter);

    Path path_39 = Path();
    path_39.moveTo(size.width * 0.5832285, size.height * 0.4632446);
    path_39.lineTo(size.width * 0.5832285, size.height * 0.4716176);
    path_39.arcToPoint(Offset(size.width * 0.4932914, size.height * 0.4744452),
        radius:
            Radius.elliptical(size.width * 0.4754829, size.height * 0.1602369),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_39.arcToPoint(Offset(size.width * 0.3892226, size.height * 0.4709655),
        radius:
            Radius.elliptical(size.width * 0.5363852, size.height * 0.1807609),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_39.lineTo(size.width * 0.3890582, size.height * 0.4625371);
    path_39.cubicTo(
        size.width * 0.4352155,
        size.height * 0.4657184,
        size.width * 0.5070058,
        size.height * 0.4684917,
        size.width * 0.5832285,
        size.height * 0.4632446);

    canvas.drawPath(path_39, greyPainter);
//
    Path path_40 = Path();
    path_40.moveTo(size.width * 0.5832285, size.height * 0.4913073);
    path_40.lineTo(size.width * 0.5832285, size.height * 0.4996814);
    path_40.arcToPoint(Offset(size.width * 0.4940280, size.height * 0.5025090),
        radius:
            Radius.elliptical(size.width * 0.4673580, size.height * 0.1574989),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_40.arcToPoint(Offset(size.width * 0.3899624, size.height * 0.4989740),
        radius:
            Radius.elliptical(size.width * 0.5300781, size.height * 0.1786354),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_40.lineTo(size.width * 0.3897158, size.height * 0.4905466);
    path_40.cubicTo(
        size.width * 0.4357940,
        size.height * 0.4937812,
        size.width * 0.5072524,
        size.height * 0.4966088,
        size.width * 0.5832285,
        size.height * 0.4913073);

    canvas.drawPath(path_40, greyPainter);

    Path neck = Path();
    neck.moveTo(size.width * 0.5443331, size.height * 0.1564078);
    neck.lineTo(size.width * 0.5422118, size.height * 0.1695880);
    neck.lineTo(size.width * 0.5395593, size.height * 0.1861018);
    neck.cubicTo(
        size.width * 0.5395593,
        size.height * 0.1861018,
        size.width * 0.5296545,
        size.height * 0.1923195,
        size.width * 0.4849546,
        size.height * 0.1923195);
    neck.cubicTo(
        size.width * 0.4402548,
        size.height * 0.1923195,
        size.width * 0.4310739,
        size.height * 0.1880728,
        size.width * 0.4310739,
        size.height * 0.1880728);
    neck.lineTo(size.width * 0.4292751, size.height * 0.1807460);
    neck.lineTo(size.width * 0.4232683, size.height * 0.1564110);
    neck.close();

    canvas.drawPath(neck, skinPainter);
// neck shadow
    // Path path_42 = Path();
    // path_42.moveTo(size.width * 0.5443426, size.height * 0.1564078);
    // path_42.lineTo(size.width * 0.5422212, size.height * 0.1695880);
    // path_42.cubicTo(
    //     size.width * 0.5235687,
    //     size.height * 0.1742065,
    //     size.width * 0.4794284,
    //     size.height * 0.1832955,
    //     size.width * 0.4292846,
    //     size.height * 0.1807428);
    // path_42.lineTo(size.width * 0.4232778, size.height * 0.1564078);
    // path_42.close();

    // canvas.drawPath(path_42, skinShadowPainter);

    Path leftEar = Path();
    leftEar.moveTo(size.width * 0.3468781, size.height * 0.09647880);
    leftEar.cubicTo(
        size.width * 0.3468781,
        size.height * 0.09647880,
        size.width * 0.3126269,
        size.height * 0.08538687,
        size.width * 0.2852739,
        size.height * 0.09262630);
    leftEar.cubicTo(
        size.width * 0.2529544,
        size.height * 0.1011772,
        size.width * 0.2867535,
        size.height * 0.1319504,
        size.width * 0.3440770,
        size.height * 0.1286935);
    leftEar.close();

    canvas.drawPath(leftEar, skinPainter);

    // Path path_44 = Path();
    // path_44.moveTo(size.width * 0.3268913, size.height * 0.1210364);
    // path_44.arcToPoint(Offset(size.width * 0.3214378, size.height * 0.1193126),
    //     radius: Radius.elliptical(
    //         size.width * 0.005630552, size.height * 0.001897487),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_44.cubicTo(
    //     size.width * 0.3177579,
    //     size.height * 0.1041668,
    //     size.width * 0.2909646,
    //     size.height * 0.1015405,
    //     size.width * 0.2898233,
    //     size.height * 0.1014372);
    // path_44.arcToPoint(Offset(size.width * 0.2858398, size.height * 0.09914018),
    //     radius: Radius.elliptical(
    //         size.width * 0.005589453, size.height * 0.001883636),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_44.arcToPoint(Offset(size.width * 0.2927160, size.height * 0.09780736),
    //     radius: Radius.elliptical(
    //         size.width * 0.005649521, size.height * 0.001903879),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_44.cubicTo(
    //     size.width * 0.2941766,
    //     size.height * 0.09792988,
    //     size.width * 0.3283772,
    //     size.height * 0.1010675,
    //     size.width * 0.3327400,
    //     size.height * 0.1190089);
    // path_44.arcToPoint(Offset(size.width * 0.3313933, size.height * 0.1203844),
    //     radius: Radius.elliptical(
    //         size.width * 0.005598938, size.height * 0.001886833),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_44.arcToPoint(Offset(size.width * 0.3275489, size.height * 0.1210332),
    //     radius: Radius.elliptical(
    //         size.width * 0.005598938, size.height * 0.001886833),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_44.arcToPoint(Offset(size.width * 0.3268913, size.height * 0.1210332),
    //     radius: Radius.elliptical(
    //         size.width * 0.005794948, size.height * 0.001952888),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);

    // canvas.drawPath(path_44, skinShadowPainter);

    // Path path_45 = Path();
    // path_45.moveTo(size.width * 0.2948721, size.height * 0.1133133);
    // path_45.arcToPoint(Offset(size.width * 0.2911669, size.height * 0.1127997),
    //     radius: Radius.elliptical(
    //         size.width * 0.005633714, size.height * 0.001898552),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_45.arcToPoint(Offset(size.width * 0.2893996, size.height * 0.1114872),
    //     radius: Radius.elliptical(
    //         size.width * 0.005494610, size.height * 0.001851674),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_45.arcToPoint(Offset(size.width * 0.2909614, size.height * 0.1101458),
    //     radius: Radius.elliptical(
    //         size.width * 0.005494610, size.height * 0.001851674),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_45.arcToPoint(Offset(size.width * 0.3215232, size.height * 0.1075888),
    //     radius: Radius.elliptical(
    //         size.width * 0.03252189, size.height * 0.01095982),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_45.arcToPoint(Offset(size.width * 0.3249818, size.height * 0.1084412),
    //     radius: Radius.elliptical(
    //         size.width * 0.005570485, size.height * 0.001877244),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_45.arcToPoint(Offset(size.width * 0.3256141, size.height * 0.1098709),
    //     radius: Radius.elliptical(
    //         size.width * 0.005570485, size.height * 0.001877244),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_45.arcToPoint(Offset(size.width * 0.3187158, size.height * 0.1112219),
    //     radius: Radius.elliptical(
    //         size.width * 0.005690620, size.height * 0.001917729),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_45.arcToPoint(Offset(size.width * 0.2991749, size.height * 0.1127252),
    //     radius: Radius.elliptical(
    //         size.width * 0.02083715, size.height * 0.007022086),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_45.arcToPoint(Offset(size.width * 0.2948721, size.height * 0.1133069),
    //     radius: Radius.elliptical(
    //         size.width * 0.005690620, size.height * 0.001917729),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);

    // canvas.drawPath(path_45, skinPainter);

    Path rightEar = Path();
    rightEar.moveTo(size.width * 0.6086150, size.height * 0.09647880);
    rightEar.cubicTo(
        size.width * 0.6086150,
        size.height * 0.09647880,
        size.width * 0.6428662,
        size.height * 0.08538687,
        size.width * 0.6702159,
        size.height * 0.09262630);
    rightEar.cubicTo(
        size.width * 0.7025386,
        size.height * 0.1011772,
        size.width * 0.6687395,
        size.height * 0.1319504,
        size.width * 0.6114129,
        size.height * 0.1286935);
    rightEar.close();

    canvas.drawPath(rightEar, skinPainter);

    // Path path_47 = Path();
    // path_47.moveTo(size.width * 0.6286175, size.height * 0.1210364);
    // path_47.arcToPoint(Offset(size.width * 0.6340742, size.height * 0.1193126),
    //     radius: Radius.elliptical(
    //         size.width * 0.005633714, size.height * 0.001898552),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_47.cubicTo(
    //     size.width * 0.6377509,
    //     size.height * 0.1041668,
    //     size.width * 0.6645443,
    //     size.height * 0.1015405,
    //     size.width * 0.6656887,
    //     size.height * 0.1014372);
    // path_47.arcToPoint(Offset(size.width * 0.6696753, size.height * 0.09914018),
    //     radius: Radius.elliptical(
    //         size.width * 0.005589453, size.height * 0.001883636),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_47.arcToPoint(Offset(size.width * 0.6627992, size.height * 0.09780736),
    //     radius: Radius.elliptical(
    //         size.width * 0.005652682, size.height * 0.001904945),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_47.cubicTo(
    //     size.width * 0.6613354,
    //     size.height * 0.09792988,
    //     size.width * 0.6271348,
    //     size.height * 0.1010675,
    //     size.width * 0.6227751,
    //     size.height * 0.1190089);
    // path_47.arcToPoint(Offset(size.width * 0.6241219, size.height * 0.1203854),
    //     radius: Radius.elliptical(
    //         size.width * 0.005595776, size.height * 0.001885767),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_47.arcToPoint(Offset(size.width * 0.6279662, size.height * 0.1210332),
    //     radius: Radius.elliptical(
    //         size.width * 0.005595776, size.height * 0.001885767),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_47.arcToPoint(Offset(size.width * 0.6286207, size.height * 0.1210332),
    //     radius: Radius.elliptical(
    //         size.width * 0.005690620, size.height * 0.001917729),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);

    // canvas.drawPath(path_47, skinPainter);

    // Path path_48 = Path();
    // path_48.moveTo(size.width * 0.6606525, size.height * 0.1133133);
    // path_48.arcToPoint(Offset(size.width * 0.6643546, size.height * 0.1127997),
    //     radius: Radius.elliptical(
    //         size.width * 0.005630552, size.height * 0.001897487),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_48.arcToPoint(Offset(size.width * 0.6661218, size.height * 0.1114872),
    //     radius: Radius.elliptical(
    //         size.width * 0.005491448, size.height * 0.001850609),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_48.arcToPoint(Offset(size.width * 0.6645601, size.height * 0.1101458),
    //     radius: Radius.elliptical(
    //         size.width * 0.005491448, size.height * 0.001850609),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_48.arcToPoint(Offset(size.width * 0.6339983, size.height * 0.1075888),
    //     radius: Radius.elliptical(
    //         size.width * 0.03251557, size.height * 0.01095769),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_48.arcToPoint(Offset(size.width * 0.6305207, size.height * 0.1084412),
    //     radius: Radius.elliptical(
    //         size.width * 0.005564162, size.height * 0.001875113),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_48.arcToPoint(Offset(size.width * 0.6298884, size.height * 0.1098709),
    //     radius: Radius.elliptical(
    //         size.width * 0.005564162, size.height * 0.001875113),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_48.arcToPoint(Offset(size.width * 0.6367867, size.height * 0.1112219),
    //     radius: Radius.elliptical(
    //         size.width * 0.005690620, size.height * 0.001917729),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);
    // path_48.arcToPoint(Offset(size.width * 0.6563277, size.height * 0.1127252),
    //     radius: Radius.elliptical(
    //         size.width * 0.02083399, size.height * 0.007021020),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_48.arcToPoint(Offset(size.width * 0.6606336, size.height * 0.1133069),
    //     radius: Radius.elliptical(
    //         size.width * 0.005690620, size.height * 0.001917729),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: false);

    // canvas.drawPath(path_48, skinPainter);
//face
    Path path_49 = Path();
    path_49.moveTo(size.width * 0.4794727, size.height * 0.1693451);
    path_49.cubicTo(
        size.width * 0.3611236,
        size.height * 0.1693451,
        size.width * 0.3245898,
        size.height * 0.1228167,
        size.width * 0.3136986,
        size.height * 0.08875355);
    path_49.cubicTo(
        size.width * 0.3036515,
        size.height * 0.05734647,
        size.width * 0.3773292,
        size.height * 0.02966724,
        size.width * 0.4727388,
        size.height * 0.02930394);
    path_49.cubicTo(
        size.width * 0.4740034,
        size.height * 0.02930394,
        size.width * 0.4752679,
        size.height * 0.02929861,
        size.width * 0.4765673,
        size.height * 0.02929861);
    path_49.quadraticBezierTo(size.width * 0.4789574, size.height * 0.02929861,
        size.width * 0.4813095, size.height * 0.02930713);
    path_49.cubicTo(
        size.width * 0.5755525,
        size.height * 0.02972584,
        size.width * 0.6489583,
        size.height * 0.05665182,
        size.width * 0.6408176,
        size.height * 0.08773289);
    path_49.cubicTo(
        size.width * 0.6317758,
        size.height * 0.1222446,
        size.width * 0.5977712,
        size.height * 0.1693429,
        size.width * 0.4794758,
        size.height * 0.1693429);

    canvas.drawPath(path_49, skinPainter);
//hair
    Path path_50 = Path();
    path_50.moveTo(size.width * 0.6297367, size.height * 0.004267978);
    path_50.cubicTo(
        size.width * 0.6897790,
        size.height * 0.01786148,
        size.width * 0.6354620,
        size.height * 0.04436983,
        size.width * 0.6354620,
        size.height * 0.04436983);
    path_50.cubicTo(
        size.width * 0.6354620,
        size.height * 0.04436983,
        size.width * 0.6952420,
        size.height * 0.06373996,
        size.width * 0.6337043,
        size.height * 0.1093393);
    path_50.lineTo(size.width * 0.6227467, size.height * 0.1085999);
    path_50.cubicTo(
        size.width * 0.6297367,
        size.height * 0.09399747,
        size.width * 0.6255414,
        size.height * 0.07622438,
        size.width * 0.6227467,
        size.height * 0.07342450);
    path_50.cubicTo(
        size.width * 0.6144289,
        size.height * 0.06508877,
        size.width * 0.5702286,
        size.height * 0.06064603,
        size.width * 0.5724795,
        size.height * 0.05163376);
    path_50.cubicTo(
        size.width * 0.5724795,
        size.height * 0.05163376,
        size.width * 0.4370143,
        size.height * 0.06565450,
        size.width * 0.3636970,
        size.height * 0.05188626);
    path_50.cubicTo(
        size.width * 0.3636970,
        size.height * 0.05188626,
        size.width * 0.3579147,
        size.height * 0.06343632,
        size.width * 0.3378268,
        size.height * 0.07072263);
    path_50.cubicTo(
        size.width * 0.3210205,
        size.height * 0.07681781,
        size.width * 0.3305902,
        size.height * 0.09804282,
        size.width * 0.3327495,
        size.height * 0.1072266);
    path_50.lineTo(size.width * 0.3214979, size.height * 0.1075942);
    path_50.cubicTo(
        size.width * 0.3148272,
        size.height * 0.09823885,
        size.width * 0.2985394,
        size.height * 0.08139053,
        size.width * 0.2967911,
        size.height * 0.07642894);
    path_50.cubicTo(
        size.width * 0.2956909,
        size.height * 0.07329984,
        size.width * 0.2916664,
        size.height * 0.06089107,
        size.width * 0.2899402,
        size.height * 0.05201944);
    path_50.arcToPoint(Offset(size.width * 0.3032626, size.height * 0.02947120),
        radius:
            Radius.elliptical(size.width * 0.1276027, size.height * 0.04300189),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_50.arcToPoint(Offset(size.width * 0.3285859, size.height * 0.01899507),
        radius: Radius.elliptical(
            size.width * 0.08784104, size.height * 0.02960228),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_50.cubicTo(
        size.width * 0.3679460,
        size.height * 0.009292429,
        size.width * 0.5752648,
        size.height * -0.008066218,
        size.width * 0.6297208,
        size.height * 0.004267978);

    canvas.drawPath(path_50, blackPainter);
//left eye
    Path path_51 = Path();
    path_51.moveTo(size.width * 0.4241124, size.height * 0.09641488);
    path_51.cubicTo(
        size.width * 0.4241124,
        size.height * 0.1003302,
        size.width * 0.4188486,
        size.height * 0.1035030,
        size.width * 0.4123518,
        size.height * 0.1035030);
    path_51.cubicTo(
        size.width * 0.4058550,
        size.height * 0.1035030,
        size.width * 0.4005817,
        size.height * 0.1003302,
        size.width * 0.4005817,
        size.height * 0.09641488);
    path_51.cubicTo(
        size.width * 0.4005817,
        size.height * 0.09249951,
        size.width * 0.4058392,
        size.height * 0.08932674,
        size.width * 0.4123423,
        size.height * 0.08932674);
    path_51.cubicTo(
        size.width * 0.4188454,
        size.height * 0.08932674,
        size.width * 0.4241124,
        size.height * 0.09249951,
        size.width * 0.4241124,
        size.height * 0.09641488);

    canvas.drawPath(path_51, blackPainter);
//left eye brow
    Path path_52 = Path();
    path_52.moveTo(size.width * 0.3642977, size.height * 0.08126481);
    path_52.cubicTo(
        size.width * 0.3642977,
        size.height * 0.08126481,
        size.width * 0.3756157,
        size.height * 0.07356193,
        size.width * 0.3973570,
        size.height * 0.07163462);
    path_52.cubicTo(
        size.width * 0.4174892,
        size.height * 0.06984580,
        size.width * 0.4318706,
        size.height * 0.07156430,
        size.width * 0.4390882,
        size.height * 0.07286622);
    path_52.arcToPoint(Offset(size.width * 0.4423414, size.height * 0.07580035),
        radius: Radius.elliptical(
            size.width * 0.007037400, size.height * 0.002371592),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_52.arcToPoint(Offset(size.width * 0.4382726, size.height * 0.07718538),
        radius: Radius.elliptical(
            size.width * 0.007271348, size.height * 0.002450432),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_52.arcToPoint(Offset(size.width * 0.4324840, size.height * 0.07713317),
        radius: Radius.elliptical(
            size.width * 0.007271348, size.height * 0.002450432),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_52.cubicTo(
        size.width * 0.4202965,
        size.height * 0.07525699,
        size.width * 0.3934779,
        size.height * 0.07284279,
        size.width * 0.3643103,
        size.height * 0.08126055);

    canvas.drawPath(path_52, blackPainter);
//right eye
    Path path_53 = Path();
    path_53.moveTo(size.width * 0.5394739, size.height * 0.09641488);
    path_53.cubicTo(
        size.width * 0.5394739,
        size.height * 0.1003302,
        size.width * 0.5447378,
        size.height * 0.1035030,
        size.width * 0.5512345,
        size.height * 0.1035030);
    path_53.cubicTo(
        size.width * 0.5577313,
        size.height * 0.1035030,
        size.width * 0.5630046,
        size.height * 0.1003302,
        size.width * 0.5630046,
        size.height * 0.09641488);
    path_53.cubicTo(
        size.width * 0.5630046,
        size.height * 0.09249951,
        size.width * 0.5577503,
        size.height * 0.08932674,
        size.width * 0.5512440,
        size.height * 0.08932674);
    path_53.cubicTo(
        size.width * 0.5447378,
        size.height * 0.08932674,
        size.width * 0.5394739,
        size.height * 0.09249951,
        size.width * 0.5394739,
        size.height * 0.09641488);

    canvas.drawPath(path_53, blackPainter);
//right eye brow
    Path path_54 = Path();
    path_54.moveTo(size.width * 0.5993203, size.height * 0.08126375);
    path_54.cubicTo(
        size.width * 0.5993203,
        size.height * 0.08126375,
        size.width * 0.5880023,
        size.height * 0.07356087,
        size.width * 0.5662609,
        size.height * 0.07163355);
    path_54.cubicTo(
        size.width * 0.5461288,
        size.height * 0.06984474,
        size.width * 0.5317473,
        size.height * 0.07156323,
        size.width * 0.5245297,
        size.height * 0.07286516);
    path_54.arcToPoint(Offset(size.width * 0.5212766, size.height * 0.07579929),
        radius: Radius.elliptical(
            size.width * 0.007024754, size.height * 0.002367330),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_54.arcToPoint(Offset(size.width * 0.5253422, size.height * 0.07718431),
        radius: Radius.elliptical(
            size.width * 0.007271348, size.height * 0.002450432),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_54.arcToPoint(Offset(size.width * 0.5311309, size.height * 0.07713211),
        radius: Radius.elliptical(
            size.width * 0.007271348, size.height * 0.002450432),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_54.cubicTo(
        size.width * 0.5433214,
        size.height * 0.07525593,
        size.width * 0.5701401,
        size.height * 0.07284172,
        size.width * 0.5993045,
        size.height * 0.08125949);

    canvas.drawPath(path_54, blackPainter);
//nose
    Path path_55 = Path();
    path_55.moveTo(size.width * 0.4797414, size.height * 0.1204451);
    path_55.arcToPoint(Offset(size.width * 0.4750435, size.height * 0.1194745),
        radius: Radius.elliptical(
            size.width * 0.006212260, size.height * 0.002093521),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.arcToPoint(Offset(size.width * 0.4742816, size.height * 0.1179094),
        radius: Radius.elliptical(
            size.width * 0.006057349, size.height * 0.002041316),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.arcToPoint(Offset(size.width * 0.4770731, size.height * 0.1166309),
        radius: Radius.elliptical(
            size.width * 0.006057349, size.height * 0.002041316),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.lineTo(size.width * 0.4948721, size.height * 0.1129905);
    path_55.lineTo(size.width * 0.4809016, size.height * 0.1112858);
    path_55.arcToPoint(Offset(size.width * 0.4768265, size.height * 0.1094746),
        radius: Radius.elliptical(
            size.width * 0.006142708, size.height * 0.002070082),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.lineTo(size.width * 0.4744207, size.height * 0.09618475);
    path_55.arcToPoint(Offset(size.width * 0.4760014, size.height * 0.09468359),
        radius: Radius.elliptical(
            size.width * 0.006164838, size.height * 0.002077540),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.arcToPoint(Offset(size.width * 0.4802725, size.height * 0.09399960),
        radius: Radius.elliptical(
            size.width * 0.006164838, size.height * 0.002077540),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.arcToPoint(Offset(size.width * 0.4868831, size.height * 0.09593757),
        radius: Radius.elliptical(
            size.width * 0.006193291, size.height * 0.002087129),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.lineTo(size.width * 0.4890424, size.height * 0.1078786);
    path_55.lineTo(size.width * 0.5112295, size.height * 0.1105805);
    path_55.arcToPoint(Offset(size.width * 0.5152793, size.height * 0.1123129),
        radius: Radius.elliptical(
            size.width * 0.006155354, size.height * 0.002074344),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.arcToPoint(Offset(size.width * 0.5123550, size.height * 0.1142753),
        radius: Radius.elliptical(
            size.width * 0.006098448, size.height * 0.002055167),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_55.lineTo(size.width * 0.4836300, size.height * 0.1201425);
    path_55.arcToPoint(Offset(size.width * 0.4797446, size.height * 0.1204419),
        radius: Radius.elliptical(
            size.width * 0.006278651, size.height * 0.002115895),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_55, skinShadowPainter);
// mouth
    Path path_56 = Path();
    path_56.moveTo(size.width * 0.5061143, size.height * 0.1404779);
    path_56.arcToPoint(Offset(size.width * 0.4231830, size.height * 0.1354044),
        radius:
            Radius.elliptical(size.width * 0.1087541, size.height * 0.03664994),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_56.arcToPoint(Offset(size.width * 0.4213999, size.height * 0.1325097),
        radius: Radius.elliptical(
            size.width * 0.006215422, size.height * 0.002094587),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_56.arcToPoint(Offset(size.width * 0.4253201, size.height * 0.1316095),
        radius: Radius.elliptical(
            size.width * 0.006190130, size.height * 0.002086063),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_56.arcToPoint(Offset(size.width * 0.4299832, size.height * 0.1319089),
        radius: Radius.elliptical(
            size.width * 0.006190130, size.height * 0.002086063),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_56.cubicTo(
        size.width * 0.4818311,
        size.height * 0.1433684,
        size.width * 0.5383864,
        size.height * 0.1321603,
        size.width * 0.5389460,
        size.height * 0.1320442);
    path_56.arcToPoint(Offset(size.width * 0.5474534, size.height * 0.1327580),
        radius: Radius.elliptical(
            size.width * 0.006196453, size.height * 0.002088194),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_56.arcToPoint(Offset(size.width * 0.5453448, size.height * 0.1356261),
        radius: Radius.elliptical(
            size.width * 0.006202776, size.height * 0.002090325),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_56.arcToPoint(Offset(size.width * 0.5061143, size.height * 0.1404779),
        radius:
            Radius.elliptical(size.width * 0.1325978, size.height * 0.04468523),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_56, skinShadowPainter);

    // Path path_57 = Path();
    // path_57.moveTo(size.width * 0.4849736, size.height * 0.1494380);
    // path_57.arcToPoint(Offset(size.width * 0.4505991, size.height * 0.1464335),
    //     radius: Radius.elliptical(
    //         size.width * 0.06421548, size.height * 0.02164051),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_57.arcToPoint(Offset(size.width * 0.4486105, size.height * 0.1455524),
    //     radius: Radius.elliptical(
    //         size.width * 0.004236350, size.height * 0.001427643),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_57.arcToPoint(Offset(size.width * 0.4490879, size.height * 0.1444572),
    //     radius: Radius.elliptical(
    //         size.width * 0.004236350, size.height * 0.001427643),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_57.arcToPoint(Offset(size.width * 0.4550567, size.height * 0.1439565),
    //     radius: Radius.elliptical(
    //         size.width * 0.004400746, size.height * 0.001483044),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_57.cubicTo(
    //     size.width * 0.4840757,
    //     size.height * 0.1496766,
    //     size.width * 0.5122981,
    //     size.height * 0.1442292,
    //     size.width * 0.5134804,
    //     size.height * 0.1439948);
    // path_57.arcToPoint(Offset(size.width * 0.5194524, size.height * 0.1444902),
    //     radius: Radius.elliptical(
    //         size.width * 0.004400746, size.height * 0.001483044),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_57.arcToPoint(Offset(size.width * 0.5199425, size.height * 0.1455823),
    //     radius: Radius.elliptical(
    //         size.width * 0.004223705, size.height * 0.001423381),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_57.arcToPoint(Offset(size.width * 0.5179666, size.height * 0.1464634),
    //     radius: Radius.elliptical(
    //         size.width * 0.004223705, size.height * 0.001423381),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);
    // path_57.arcToPoint(Offset(size.width * 0.4849736, size.height * 0.1494380),
    //     radius: Radius.elliptical(
    //         size.width * 0.07338687, size.height * 0.02473125),
    //     rotation: 0,
    //     largeArc: false,
    //     clockwise: true);

    // canvas.drawPath(path_57, skinShadowPainter);
//left arm
    canvas.drawLine(
        Offset(size.width * getpoint(0.1269988, animation.leftArm.a0.x),
            size.height * getpoint(0.3286732, animation.leftArm.a0.y)),
        Offset(size.width * getpoint(0.2471342, animation.leftArm.a1.x),
            size.height * getpoint(0.2114786, animation.leftArm.a1.y)),
        armsPainter);
//left wrist
    canvas.drawLine(
        Offset(size.width * getpoint(0.09854573, animation.leftArm.a1.x),
            size.height * getpoint(0.4575873, animation.leftArm.a1.y)),
        Offset(size.width * getpoint(0.1272391, animation.leftArm.a2.x),
            size.height * getpoint(0.3287158, animation.leftArm.a2.y)),
        armsPainter);
//left balm
    Path leftBalm = Path();
    leftBalm.moveTo(size.width * getpoint(0.1714904, animation.leftHand.h2.x),
        size.height * getpoint(0.4720747, animation.leftHand.h2.y));
    leftBalm.lineTo(size.width * getpoint(0.1510122, animation.leftHand.h1.x),
        size.height * getpoint(0.4595607, animation.leftHand.h1.y));
    leftBalm.lineTo(size.width * getpoint(0.04021748, animation.leftHand.h0.x),
        size.height * getpoint(0.4580077, animation.leftHand.h0.y));
    leftBalm.lineTo(size.width * getpoint(0.02636331, animation.leftHand.h17.x),
        size.height * getpoint(0.4765605, animation.leftHand.h17.y));
    leftBalm.lineTo(size.width * getpoint(0.01928603, animation.leftHand.h13.x),
        size.height * getpoint(0.4969293, animation.leftHand.h13.y));
    leftBalm.lineTo(size.width * getpoint(0.05091605, animation.leftHand.h9.x),
        size.height * getpoint(0.5021963, animation.leftHand.h9.y));
    leftBalm.lineTo(size.width * getpoint(0.09790498, animation.leftHand.h5.x),
        size.height * getpoint(0.5042409, animation.leftHand.h5.y));
    leftBalm.lineTo(size.width * getpoint(0.1560482, animation.leftHand.h2.x),
        size.height * getpoint(0.5048304, animation.leftHand.h2.y));
    leftBalm.close();

    canvas.drawPath(leftBalm, skinPainter);
//left littel 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.03161456, animation.leftHand.h17.x),
            size.height * getpoint(0.4980726, animation.leftHand.h17.y)),
        Offset(size.width * getpoint(0.02213019, animation.leftHand.h18.x),
            size.height * getpoint(0.5140537, animation.leftHand.h18.y)),
        fingersPainter);
//left littel 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.02213019, animation.leftHand.h18.x),
            size.height * getpoint(0.5140537, animation.leftHand.h18.y)),
        Offset(size.width * getpoint(0.01264582, animation.leftHand.h19.x),
            size.height * getpoint(0.5300348, animation.leftHand.h19.y)),
        fingersPainter);
// left littel 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.01264582, animation.leftHand.h19.x),
            size.height * getpoint(0.5300348, animation.leftHand.h19.y)),
        Offset(size.width * getpoint(0.01634788, animation.leftHand.h20.x),
            size.height * getpoint(0.5460159, animation.leftHand.h20.y)),
        fingersPainter);
// left ring 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.06955202, animation.leftHand.h13.x),
            size.height * getpoint(0.5002035, animation.leftHand.h13.y)),
        Offset(size.width * getpoint(0.06006766, animation.leftHand.h14.x),
            size.height * getpoint(0.5161845, animation.leftHand.h14.y)),
        fingersPainter);
// left ring 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.06006766, animation.leftHand.h14.x),
            size.height * getpoint(0.5161845, animation.leftHand.h14.y)),
        Offset(size.width * getpoint(0.05058329, animation.leftHand.h15.x),
            size.height * getpoint(0.5321656, animation.leftHand.h15.y)),
        fingersPainter);
// left ring 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.05058329, animation.leftHand.h15.x),
            size.height * getpoint(0.5321656, animation.leftHand.h15.y)),
        Offset(size.width * getpoint(0.05428535, animation.leftHand.h16.x),
            size.height * getpoint(0.5481467, animation.leftHand.h16.y)),
        fingersPainter);
// left middel 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.1074895, animation.leftHand.h9.x),
            size.height * getpoint(0.4991381, animation.leftHand.h9.y)),
        Offset(size.width * getpoint(0.09800512, animation.leftHand.h10.x),
            size.height * getpoint(0.5151191, animation.leftHand.h10.y)),
        fingersPainter);
//left middel 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.09800512, animation.leftHand.h10.x),
            size.height * getpoint(0.5151191, animation.leftHand.h10.y)),
        Offset(size.width * getpoint(0.08852075, animation.leftHand.h11.x),
            size.height * getpoint(0.5311002, animation.leftHand.h11.y)),
        fingersPainter);
//left middel 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.08852075, animation.leftHand.h11.x),
            size.height * getpoint(0.5311002, animation.leftHand.h11.y)),
        Offset(size.width * getpoint(0.09222282, animation.leftHand.h12.x),
            size.height * getpoint(0.5481467, animation.leftHand.h12.y)),
        fingersPainter);
//left index 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.1454270, animation.leftHand.h5.x),
            size.height * getpoint(0.5016631, animation.leftHand.h5.y)),
        Offset(size.width * getpoint(0.1359426, animation.leftHand.h6.x),
            size.height * getpoint(0.5176441, animation.leftHand.h6.y)),
        fingersPainter);
//left index 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.1359426, animation.leftHand.h6.x),
            size.height * getpoint(0.5176441, animation.leftHand.h6.y)),
        Offset(size.width * getpoint(0.1264582, animation.leftHand.h7.x),
            size.height * getpoint(0.5336252, animation.leftHand.h7.y)),
        fingersPainter);
//left index 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.1264582, animation.leftHand.h7.x),
            size.height * getpoint(0.5336252, animation.leftHand.h7.y)),
        Offset(size.width * getpoint(0.1396447, animation.leftHand.h8.x),
            size.height * getpoint(0.5502754, animation.leftHand.h8.y)),
        fingersPainter);
//left thumb 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.1649363, animation.leftHand.h2.x),
            size.height * getpoint(0.4767645, animation.leftHand.h2.y)),
        Offset(size.width * getpoint(0.1870665, animation.leftHand.h3.x),
            size.height * getpoint(0.4916802, animation.leftHand.h3.y)),
        fingersPainter);
//left thumb 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.1870665, animation.leftHand.h3.x),
            size.height * getpoint(0.4916802, animation.leftHand.h3.y)),
        Offset(size.width * getpoint(0.2028738, animation.leftHand.h4.x),
            size.height * getpoint(0.5055305, animation.leftHand.h4.y)),
        fingersPainter);
//rignt arm
    canvas.drawLine(
        Offset(size.width * getpoint(0.7170845, animation.rightArm.a0.x),
            size.height * getpoint(0.2125440, animation.rightArm.a0.y)),
        Offset(size.width * getpoint(0.8372198, animation.rightArm.a1.x),
            size.height * getpoint(0.3297386, animation.rightArm.a1.y)),
        armsPainter);

//right wrist
    canvas.drawLine(
        Offset(size.width * getpoint(0.8369669, animation.rightArm.a1.x),
            size.height * getpoint(0.3297813, animation.rightArm.a1.y)),
        Offset(size.width * getpoint(0.8656603, animation.rightArm.a2.x),
            size.height * getpoint(0.4586527, animation.rightArm.a2.y)),
        armsPainter);
//right balm
    Path rightBalm = Path();
    rightBalm.moveTo(size.width * getpoint(0.7926765, animation.rightHand.h2.x),
        size.height * getpoint(0.4731333, animation.rightHand.h2.y));
    rightBalm.lineTo(size.width * getpoint(0.8131547, animation.rightHand.h1.x),
        size.height * getpoint(0.4606193, animation.rightHand.h1.y));
    rightBalm.lineTo(size.width * getpoint(0.9239494, animation.rightHand.h0.x),
        size.height * getpoint(0.4590663, animation.rightHand.h0.y));
    rightBalm.lineTo(
        size.width * getpoint(0.9378065, animation.rightHand.h17.x),
        size.height * getpoint(0.4776195, animation.rightHand.h17.y));
    rightBalm.lineTo(
        size.width * getpoint(0.9448808, animation.rightHand.h13.x),
        size.height * getpoint(0.4979879, animation.rightHand.h13.y));
    rightBalm.lineTo(size.width * getpoint(0.9132496, animation.rightHand.h9.x),
        size.height * getpoint(0.5032559, animation.rightHand.h9.y));
    rightBalm.lineTo(size.width * getpoint(0.8662619, animation.rightHand.h5.x),
        size.height * getpoint(0.5052995, animation.rightHand.h5.y));
    rightBalm.lineTo(size.width * getpoint(0.8081187, animation.rightHand.h2.x),
        size.height * getpoint(0.5058891, animation.rightHand.h2.y));
    rightBalm.close();

    canvas.drawPath(rightBalm, skinPainter);
//right littel 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.9326009, animation.rightHand.h17.x),
            size.height * getpoint(0.4991381, animation.rightHand.h17.y)),
        Offset(size.width * getpoint(0.9420853, animation.rightHand.h18.x),
            size.height * getpoint(0.5151191, animation.rightHand.h18.y)),
        fingersPainter);
//right littel 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.9420853, animation.rightHand.h18.x),
            size.height * getpoint(0.5151191, animation.rightHand.h18.y)),
        Offset(size.width * getpoint(0.9515697, animation.rightHand.h19.x),
            size.height * getpoint(0.5311002, animation.rightHand.h19.y)),
        fingersPainter);
//right littel 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.9515728, animation.rightHand.h19.x),
            size.height * getpoint(0.5311002, animation.rightHand.h19.y)),
        Offset(size.width * getpoint(0.9478708, animation.rightHand.h20.x),
            size.height * getpoint(0.5470813, animation.rightHand.h20.y)),
        fingersPainter);
//ringht ring 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.8946635, animation.rightHand.h13.x),
            size.height * getpoint(0.5012689, animation.rightHand.h13.y)),
        Offset(size.width * getpoint(0.9041478, animation.rightHand.h14.x),
            size.height * getpoint(0.5172499, animation.rightHand.h14.y)),
        fingersPainter);
// rignt ring 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.9041478, animation.rightHand.h14.x),
            size.height * getpoint(0.5172499, animation.rightHand.h14.y)),
        Offset(size.width * getpoint(0.9136322, animation.rightHand.h15.x),
            size.height * getpoint(0.5332310, animation.rightHand.h15.y)),
        fingersPainter);
//right ring 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.9136354, animation.rightHand.h15.x),
            size.height * getpoint(0.5332310, animation.rightHand.h15.y)),
        Offset(size.width * getpoint(0.9099333, animation.rightHand.h16.x),
            size.height * getpoint(0.5492121, animation.rightHand.h16.y)),
        fingersPainter);
//right middel 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.8567260, animation.rightHand.h9.x),
            size.height * getpoint(0.5002035, animation.rightHand.h9.y)),
        Offset(size.width * getpoint(0.8662104, animation.rightHand.h10.x),
            size.height * getpoint(0.5161845, animation.rightHand.h10.y)),
        fingersPainter);
//rignt middel 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.8662104, animation.rightHand.h10.x),
            size.height * getpoint(0.5161845, animation.rightHand.h10.y)),
        Offset(size.width * getpoint(0.8756947, animation.rightHand.h11.x),
            size.height * getpoint(0.5321656, animation.rightHand.h11.y)),
        fingersPainter);
//rignt middel 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.8756979, animation.rightHand.h11.x),
            size.height * getpoint(0.5321656, animation.rightHand.h11.y)),
        Offset(size.width * getpoint(0.8719959, animation.rightHand.h12.x),
            size.height * getpoint(0.5492121, animation.rightHand.h12.y)),
        fingersPainter);
//rignt index 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.8187885, animation.rightHand.h5.x),
            size.height * getpoint(0.5027285, animation.rightHand.h5.y)),
        Offset(size.width * getpoint(0.8282729, animation.rightHand.h6.x),
            size.height * getpoint(0.5187095, animation.rightHand.h6.y)),
        fingersPainter);
//right index 1
    canvas.drawLine(
        Offset(size.width * getpoint(0.8282729, animation.rightHand.h6.x),
            size.height * getpoint(0.5187095, animation.rightHand.h6.y)),
        Offset(size.width * getpoint(0.8377573, animation.rightHand.h7.x),
            size.height * getpoint(0.5346906, animation.rightHand.h7.y)),
        fingersPainter);
//right index 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.8377604, animation.rightHand.h7.x),
            size.height * getpoint(0.5346906, animation.rightHand.h7.y)),
        Offset(size.width * getpoint(0.8245740, animation.rightHand.h8.x),
            size.height * getpoint(0.5513408, animation.rightHand.h8.y)),
        fingersPainter);
//right thumb 0
    canvas.drawLine(
        Offset(size.width * getpoint(0.7992824, animation.rightHand.h2.x),
            size.height * getpoint(0.4778300, animation.rightHand.h2.y)),
        Offset(size.width * getpoint(0.7771522, animation.rightHand.h3.x),
            size.height * getpoint(0.4927456, animation.rightHand.h3.y)),
        fingersPainter);
//right thumb 2
    canvas.drawLine(
        Offset(size.width * getpoint(0.7771522, animation.rightHand.h3.x),
            size.height * getpoint(0.4927456, animation.rightHand.h3.y)),
        Offset(size.width * getpoint(0.7613449, animation.rightHand.h4.x),
            size.height * getpoint(0.5065959, animation.rightHand.h4.y)),
        fingersPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
