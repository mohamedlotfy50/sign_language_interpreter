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
    final Paint black = Paint()..style = PaintingStyle.fill;
    black.color = const Color(0xff2c2c2c);
    final Paint lightYellow = Paint()..style = PaintingStyle.fill;
    lightYellow.color = const Color(0xffde9d01);
    final Paint white = Paint()..style = PaintingStyle.fill;
    white.color = Colors.white;
    final Paint grey = Paint()..style = PaintingStyle.fill;
    grey.color = Colors.grey;

    final Paint darkYellow = Paint()..style = PaintingStyle.fill;
    darkYellow.color = const Color(0xffbf8005);
    final Paint green = Paint()..style = PaintingStyle.fill;
    green.color = const Color(0xff009762);
    final Paint lightSkin = Paint()..style = PaintingStyle.fill;
    lightSkin.color = const Color(0xffffaf82);

    final Paint darkSkin = Paint()..style = PaintingStyle.fill;
    darkSkin.color = const Color(0xfff88968);
    final Path path_0 = Path();

    final Paint arms = Paint();
    arms
      ..color = const Color(0xff009762)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15
      ..strokeCap = StrokeCap.round;

    final Paint fingures = Paint();
    fingures
      ..color = const Color(0xfff88968)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    path_0.moveTo(size.width * 0.2683518, size.height * 0.5322430);
    path_0.cubicTo(
        size.width * 0.2680380,
        size.height * 0.4973747,
        size.width * 0.2921971,
        size.height * 0.4739599,
        size.width * 0.2921971,
        size.height * 0.4739599);
    path_0.cubicTo(
        size.width * 0.4489801,
        size.height * 0.4703446,
        size.width * 0.6955237,
        size.height * 0.4739599,
        size.width * 0.6955237,
        size.height * 0.4739599);
    path_0.cubicTo(
        size.width * 0.6958660,
        size.height * 0.4742964,
        size.width * 0.6962027,
        size.height * 0.4746349,
        size.width * 0.6965336,
        size.height * 0.4749795);
    path_0.cubicTo(
        size.width * 0.6965336,
        size.height * 0.4749795,
        size.width * 0.7218738,
        size.height * 0.5068217,
        size.width * 0.7070497,
        size.height * 0.5322511);
    path_0.cubicTo(
        size.width * 0.5545177,
        size.height * 0.5660040,
        size.width * 0.4075319,
        size.height * 0.5637753,
        size.width * 0.2683518,
        size.height * 0.5322511);

    canvas.drawPath(path_0, black);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.7099883, size.height * 0.5256465);
    path_1.cubicTo(
        size.width * 0.7099883,
        size.height * 0.5256465,
        size.width * 0.7436992,
        size.height * 0.6897926,
        size.width * 0.7397449,
        size.height * 0.7307781);
    path_1.lineTo(size.width * 0.7699866, size.height * 0.9459440);
    path_1.lineTo(size.width * 0.6698297, size.height * 0.9438213);
    path_1.cubicTo(
        size.width * 0.6480956,
        size.height * 0.8452419,
        size.width * 0.6108585,
        size.height * 0.7957840,
        size.width * 0.6119654,
        size.height * 0.7321932);
    path_1.lineTo(size.width * 0.5262104, size.height * 0.5407990);
    path_1.arcToPoint(Offset(size.width * 0.7099883, size.height * 0.5256465),
        radius:
            Radius.elliptical(size.width * 0.4923169, size.height * 0.1759340),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    canvas.drawPath(path_1, black);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.6662007, size.height * 0.9420350);
    path_2.cubicTo(
        size.width * 0.6690537,
        size.height * 0.9278920,
        size.width * 0.7043793,
        size.height * 0.9201863,
        size.width * 0.7404525,
        size.height * 0.9237221);
    path_2.cubicTo(
        size.width * 0.7757211,
        size.height * 0.9271742,
        size.width * 0.7799663,
        size.height * 0.9482053,
        size.width * 0.7799663,
        size.height * 0.9482053);
    path_2.arcToPoint(Offset(size.width * 0.8324613, size.height * 0.9861322),
        radius:
            Radius.elliptical(size.width * 0.1849819, size.height * 0.06610497),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(
        size.width * 0.8326952,
        size.height * 0.9866685,
        size.width * 0.8329406,
        size.height * 0.9872027,
        size.width * 0.8330946,
        size.height * 0.9877635);
    path_2.arcToPoint(Offset(size.width * 0.8133063, size.height * 0.9970902),
        radius: Radius.elliptical(
            size.width * 0.02382243, size.height * 0.008513163),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(size.width * 0.6313315, size.height * 0.9972595),
        radius:
            Radius.elliptical(size.width * 0.5286069, size.height * 0.1889025),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(size.width * 0.6120282, size.height * 0.9878797),
        radius: Radius.elliptical(
            size.width * 0.02365125, size.height * 0.008451991),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(
        size.width * 0.6121138,
        size.height * 0.9877105,
        size.width * 0.6121138,
        size.height * 0.9875392,
        size.width * 0.6121880,
        size.height * 0.9873720);
    path_2.cubicTo(
        size.width * 0.6161479,
        size.height * 0.9766607,
        size.width * 0.6242789,
        size.height * 0.9570039,
        size.width * 0.6609740,
        size.height * 0.9497122);
    path_2.close();

    canvas.drawPath(path_2, lightYellow);

    final Path path_3 = Path();
    path_3.moveTo(size.width * 0.6801518, size.height * 0.9583293);
    path_3.lineTo(size.width * 0.6769850, size.height * 0.9557438);
    path_3.cubicTo(
        size.width * 0.6791818,
        size.height * 0.9554012,
        size.width * 0.7311061,
        size.height * 0.9474468,
        size.width * 0.7689481,
        size.height * 0.9562760);
    path_3.lineTo(size.width * 0.7646401, size.height * 0.9586372);
    path_3.cubicTo(
        size.width * 0.7303358,
        size.height * 0.9506318,
        size.width * 0.6806539,
        size.height * 0.9582498,
        size.width * 0.6801518,
        size.height * 0.9583293);
    canvas.drawPath(path_3, white);

    final Path path_4 = Path();
    path_4.moveTo(size.width * 0.6866680, size.height * 0.9579603);
    path_4.arcToPoint(Offset(size.width * 0.6793758, size.height * 0.9543083),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_4.arcToPoint(Offset(size.width * 0.6866680, size.height * 0.9579603),
        radius: Radius.elliptical(
            size.width * 0.008889903, size.height * 0.003176888),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_4, white);

    final Path path_5 = Path();
    path_5.moveTo(size.width * 0.7759265, size.height * 0.9572038);
    path_5.arcToPoint(Offset(size.width * 0.7743973, size.height * 0.9548364),
        radius: Radius.elliptical(
            size.width * 0.008872785, size.height * 0.003170771),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_5.arcToPoint(Offset(size.width * 0.7759265, size.height * 0.9572038),
        radius: Radius.elliptical(
            size.width * 0.008872785, size.height * 0.003170771),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_5, white);

    final Path path_6 = Path();
    path_6.moveTo(size.width * 0.6810647, size.height * 0.9503606);
    path_6.lineTo(size.width * 0.6778979, size.height * 0.9477771);
    path_6.cubicTo(
        size.width * 0.6800890,
        size.height * 0.9474345,
        size.width * 0.7320191,
        size.height * 0.9394760,
        size.width * 0.7698611,
        size.height * 0.9483073);
    path_6.lineTo(size.width * 0.7655531, size.height * 0.9506706);
    path_6.cubicTo(
        size.width * 0.7312488,
        size.height * 0.9426672,
        size.width * 0.6815612,
        size.height * 0.9502852,
        size.width * 0.6810647,
        size.height * 0.9503606);

    canvas.drawPath(path_6, white);

    final Path path_7 = Path();
    path_7.moveTo(size.width * 0.6875695, size.height * 0.9500079);
    path_7.arcToPoint(Offset(size.width * 0.6802716, size.height * 0.9463559),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_7.arcToPoint(Offset(size.width * 0.6875695, size.height * 0.9500079),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_7, white);

    final Path path_8 = Path();
    path_8.moveTo(size.width * 0.7768281, size.height * 0.9492350);
    path_8.arcToPoint(Offset(size.width * 0.7695358, size.height * 0.9455830),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_8.arcToPoint(Offset(size.width * 0.7768281, size.height * 0.9492350),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_8, white);

    final Path path_9 = Path();
    path_9.moveTo(size.width * 0.6801518, size.height * 0.9662675);
    path_9.lineTo(size.width * 0.6769850, size.height * 0.9636840);
    path_9.cubicTo(
        size.width * 0.6791818,
        size.height * 0.9633414,
        size.width * 0.7311061,
        size.height * 0.9553829,
        size.width * 0.7689481,
        size.height * 0.9642141);
    path_9.lineTo(size.width * 0.7646401, size.height * 0.9665754);
    path_9.cubicTo(
        size.width * 0.7303358,
        size.height * 0.9585700,
        size.width * 0.6806539,
        size.height * 0.9661920,
        size.width * 0.6801518,
        size.height * 0.9662675);

    canvas.drawPath(path_9, white);

    final Path path_10 = Path();
    path_10.moveTo(size.width * 0.6866680, size.height * 0.9659127);
    path_10.arcToPoint(Offset(size.width * 0.6793701, size.height * 0.9622607),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_10.arcToPoint(Offset(size.width * 0.6866680, size.height * 0.9659127),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_10, white);

    final Path path_11 = Path();
    path_11.moveTo(size.width * 0.7759265, size.height * 0.9651419);
    path_11.arcToPoint(Offset(size.width * 0.7686286, size.height * 0.9614899),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_11.arcToPoint(Offset(size.width * 0.7759265, size.height * 0.9651419),
        radius: Radius.elliptical(
            size.width * 0.008884197, size.height * 0.003174849),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_11, white);

    final Path path_12 = Path();
    path_12.moveTo(size.width * 0.7455650, size.height * 0.9328388);
    path_12.cubicTo(
        size.width * 0.7455650,
        size.height * 0.9328388,
        size.width * 0.7188782,
        size.height * 0.9295416,
        size.width * 0.6961342,
        size.height * 0.9335463);
    path_12.arcToPoint(Offset(size.width * 0.6961342, size.height * 0.9400469),
        radius: Radius.elliptical(
            size.width * 0.02575105, size.height * 0.009202373),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_12.cubicTo(
        size.width * 0.6961342,
        size.height * 0.9400469,
        size.width * 0.7268152,
        size.height * 0.9382831,
        size.width * 0.7462155,
        size.height * 0.9396391);
    path_12.arcToPoint(Offset(size.width * 0.7455650, size.height * 0.9328388),
        radius: Radius.elliptical(
            size.width * 0.02778237, size.height * 0.009928286),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_12, white);

    final Path path_13 = Path();
    path_13.moveTo(size.width * 0.8133120, size.height * 0.9970963);
    path_13.arcToPoint(Offset(size.width * 0.6313372, size.height * 0.9972656),
        radius:
            Radius.elliptical(size.width * 0.5286126, size.height * 0.1889045),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.arcToPoint(Offset(size.width * 0.6120339, size.height * 0.9878858),
        radius: Radius.elliptical(
            size.width * 0.02365125, size.height * 0.008451991),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.cubicTo(
        size.width * 0.6121081,
        size.height * 0.9877166,
        size.width * 0.6121081,
        size.height * 0.9875453,
        size.width * 0.6121880,
        size.height * 0.9873781);
    path_13.arcToPoint(Offset(size.width * 0.8324384, size.height * 0.9861363),
        radius:
            Radius.elliptical(size.width * 0.3968674, size.height * 0.1418242),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_13.cubicTo(
        size.width * 0.8326724,
        size.height * 0.9866726,
        size.width * 0.8329120,
        size.height * 0.9872068,
        size.width * 0.8330718,
        size.height * 0.9877676);
    path_13.arcToPoint(Offset(size.width * 0.8133120, size.height * 0.9970963),
        radius: Radius.elliptical(
            size.width * 0.02382243, size.height * 0.008513163),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_13, lightYellow);

    final Path path_21 = Path();
    path_21.moveTo(size.width * 0.2688540, size.height * 0.5256465);
    path_21.cubicTo(
        size.width * 0.2688540,
        size.height * 0.5256465,
        size.width * 0.2351431,
        size.height * 0.6897926,
        size.width * 0.2390973,
        size.height * 0.7307781);
    path_21.lineTo(size.width * 0.2088385, size.height * 0.9459440);
    path_21.lineTo(size.width * 0.3089955, size.height * 0.9438213);
    path_21.cubicTo(
        size.width * 0.3307295,
        size.height * 0.8452419,
        size.width * 0.3679667,
        size.height * 0.7957840,
        size.width * 0.3668597,
        size.height * 0.7321932);
    path_21.lineTo(size.width * 0.4526148, size.height * 0.5407990);
    path_21.arcToPoint(Offset(size.width * 0.2688368, size.height * 0.5256465),
        radius:
            Radius.elliptical(size.width * 0.4923169, size.height * 0.1759340),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_21, black);

    final Path path_22 = Path();
    path_22.moveTo(size.width * 0.3126359, size.height * 0.9420350);
    path_22.cubicTo(
        size.width * 0.3097829,
        size.height * 0.9278920,
        size.width * 0.2744572,
        size.height * 0.9201863,
        size.width * 0.2383841,
        size.height * 0.9237221);
    path_22.cubicTo(
        size.width * 0.2030812,
        size.height * 0.9271742,
        size.width * 0.1988645,
        size.height * 0.9482033,
        size.width * 0.1988645,
        size.height * 0.9482033);
    path_22.arcToPoint(Offset(size.width * 0.1463696, size.height * 0.9861302),
        radius:
            Radius.elliptical(size.width * 0.1849819, size.height * 0.06610497),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_22.cubicTo(
        size.width * 0.1461356,
        size.height * 0.9866664,
        size.width * 0.1458903,
        size.height * 0.9872007,
        size.width * 0.1457362,
        size.height * 0.9877614);
    path_22.arcToPoint(Offset(size.width * 0.1655302, size.height * 0.9970902),
        radius: Radius.elliptical(
            size.width * 0.02382243, size.height * 0.008513163),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_22.arcToPoint(Offset(size.width * 0.3475051, size.height * 0.9972595),
        radius:
            Radius.elliptical(size.width * 0.5286069, size.height * 0.1889025),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_22.arcToPoint(Offset(size.width * 0.3668084, size.height * 0.9878797),
        radius: Radius.elliptical(
            size.width * 0.02365125, size.height * 0.008451991),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_22.cubicTo(
        size.width * 0.3667228,
        size.height * 0.9877105,
        size.width * 0.3667228,
        size.height * 0.9875392,
        size.width * 0.3666486,
        size.height * 0.9873720);
    path_22.cubicTo(
        size.width * 0.3626887,
        size.height * 0.9766607,
        size.width * 0.3545576,
        size.height * 0.9570039,
        size.width * 0.3178625,
        size.height * 0.9497122);
    path_22.close();

    canvas.drawPath(path_22, lightYellow);

    final Path path_23 = Path();
    path_23.moveTo(size.width * 0.2986791, size.height * 0.9583293);
    path_23.lineTo(size.width * 0.3018459, size.height * 0.9557438);
    path_23.cubicTo(
        size.width * 0.2996548,
        size.height * 0.9554012,
        size.width * 0.2477247,
        size.height * 0.9474468,
        size.width * 0.2098827,
        size.height * 0.9562760);
    path_23.lineTo(size.width * 0.2141965, size.height * 0.9586352);
    path_23.cubicTo(
        size.width * 0.2484951,
        size.height * 0.9506318,
        size.width * 0.2981769,
        size.height * 0.9582498,
        size.width * 0.2986791,
        size.height * 0.9583293);

    canvas.drawPath(path_23, white);

    final Path path_24 = Path();
    path_24.moveTo(size.width * 0.2921457, size.height * 0.9579603);
    path_24.arcToPoint(Offset(size.width * 0.2994380, size.height * 0.9543083),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_24.arcToPoint(Offset(size.width * 0.2921457, size.height * 0.9579603),
        radius: Radius.elliptical(
            size.width * 0.008889903, size.height * 0.003176888),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_24, white);

    final Path path_25 = Path();
    path_25.moveTo(size.width * 0.2029158, size.height * 0.9572038);
    path_25.arcToPoint(Offset(size.width * 0.2102137, size.height * 0.9535518),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_25.arcToPoint(Offset(size.width * 0.2029158, size.height * 0.9572038),
        radius: Radius.elliptical(
            size.width * 0.008872785, size.height * 0.003170771),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_25, white);

    final Path path_26 = Path();
    path_26.moveTo(size.width * 0.2977775, size.height * 0.9503606);
    path_26.lineTo(size.width * 0.3009443, size.height * 0.9477771);
    path_26.cubicTo(
        size.width * 0.2987532,
        size.height * 0.9474345,
        size.width * 0.2468232,
        size.height * 0.9394760,
        size.width * 0.2089812,
        size.height * 0.9483073);
    path_26.lineTo(size.width * 0.2132949, size.height * 0.9506706);
    path_26.cubicTo(
        size.width * 0.2475935,
        size.height * 0.9426672,
        size.width * 0.2972811,
        size.height * 0.9502852,
        size.width * 0.2977775,
        size.height * 0.9503606);

    canvas.drawPath(path_26, white);

    final Path path_27 = Path();
    path_27.moveTo(size.width * 0.2912670, size.height * 0.9500079);
    path_27.arcToPoint(Offset(size.width * 0.2985649, size.height * 0.9463559),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_27.arcToPoint(Offset(size.width * 0.2912670, size.height * 0.9500079),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_27, white);

    final Path path_28 = Path();
    path_28.moveTo(size.width * 0.2019914, size.height * 0.9492350);
    path_28.arcToPoint(Offset(size.width * 0.2092836, size.height * 0.9455830),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_28.arcToPoint(Offset(size.width * 0.2019914, size.height * 0.9492350),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_28, white);

    final Path path_29 = Path();
    path_29.moveTo(size.width * 0.2986791, size.height * 0.9662675);
    path_29.lineTo(size.width * 0.3018459, size.height * 0.9636840);
    path_29.cubicTo(
        size.width * 0.2996548,
        size.height * 0.9633414,
        size.width * 0.2477247,
        size.height * 0.9553829,
        size.width * 0.2098827,
        size.height * 0.9642141);
    path_29.lineTo(size.width * 0.2141965, size.height * 0.9665733);
    path_29.cubicTo(
        size.width * 0.2484951,
        size.height * 0.9585700,
        size.width * 0.2981769,
        size.height * 0.9661920,
        size.width * 0.2986791,
        size.height * 0.9662675);

    canvas.drawPath(path_29, white);

    final Path path_30 = Path();
    path_30.moveTo(size.width * 0.2921457, size.height * 0.9659127);
    path_30.arcToPoint(Offset(size.width * 0.2994437, size.height * 0.9622607),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_30.arcToPoint(Offset(size.width * 0.2921457, size.height * 0.9659127),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_30, white);

    final Path path_31 = Path();
    path_31.moveTo(size.width * 0.2029158, size.height * 0.9651419);
    path_31.arcToPoint(Offset(size.width * 0.2102137, size.height * 0.9614899),
        radius: Radius.elliptical(
            size.width * 0.008878491, size.height * 0.003172810),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_31.arcToPoint(Offset(size.width * 0.2029158, size.height * 0.9651419),
        radius: Radius.elliptical(
            size.width * 0.008884197, size.height * 0.003174849),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_31, white);

    final Path path_32 = Path();
    path_32.moveTo(size.width * 0.2332772, size.height * 0.9328388);
    path_32.cubicTo(
        size.width * 0.2332772,
        size.height * 0.9328388,
        size.width * 0.2599641,
        size.height * 0.9295416,
        size.width * 0.2827081,
        size.height * 0.9335463);
    path_32.arcToPoint(Offset(size.width * 0.2827081, size.height * 0.9400469),
        radius: Radius.elliptical(
            size.width * 0.02575105, size.height * 0.009202373),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_32.cubicTo(
        size.width * 0.2827081,
        size.height * 0.9400469,
        size.width * 0.2520270,
        size.height * 0.9382831,
        size.width * 0.2326267,
        size.height * 0.9396391);
    path_32.arcToPoint(Offset(size.width * 0.2332772, size.height * 0.9328388),
        radius: Radius.elliptical(
            size.width * 0.02778237, size.height * 0.009928286),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_32, white);

    final Path path_33 = Path();
    path_33.moveTo(size.width * 0.1655302, size.height * 0.9970963);
    path_33.arcToPoint(Offset(size.width * 0.3475051, size.height * 0.9972656),
        radius:
            Radius.elliptical(size.width * 0.5286126, size.height * 0.1889045),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_33.arcToPoint(Offset(size.width * 0.3668084, size.height * 0.9878858),
        radius: Radius.elliptical(
            size.width * 0.02364555, size.height * 0.008449952),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_33.cubicTo(
        size.width * 0.3667342,
        size.height * 0.9877166,
        size.width * 0.3667342,
        size.height * 0.9875453,
        size.width * 0.3666543,
        size.height * 0.9873781);
    path_33.arcToPoint(Offset(size.width * 0.1464038, size.height * 0.9861363),
        radius:
            Radius.elliptical(size.width * 0.3968674, size.height * 0.1418242),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_33.cubicTo(
        size.width * 0.1461699,
        size.height * 0.9866726,
        size.width * 0.1459302,
        size.height * 0.9872068,
        size.width * 0.1457704,
        size.height * 0.9877676);
    path_33.arcToPoint(Offset(size.width * 0.1655302, size.height * 0.9970963),
        radius: Radius.elliptical(
            size.width * 0.02382243, size.height * 0.008513163),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_33, darkYellow);

    final Path path_41 = Path();
    path_41.moveTo(size.width * 0.7151465, size.height * 0.4879072);
    path_41.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.5060999),
        radius:
            Radius.elliptical(size.width * 0.5755613, size.height * 0.2056821),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_41.arcToPoint(Offset(size.width * 0.4924653, size.height * 0.5102290),
        radius:
            Radius.elliptical(size.width * 0.3755214, size.height * 0.1341960),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_41.arcToPoint(Offset(size.width * 0.4088500, size.height * 0.5070236),
        radius:
            Radius.elliptical(size.width * 0.3648683, size.height * 0.1303890),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_41.cubicTo(
        size.width * 0.3644974,
        size.height * 0.5034634,
        size.width * 0.3208296,
        size.height * 0.4969913,
        size.width * 0.2723631,
        size.height * 0.4879113);
    path_41.lineTo(size.width * 0.2906964, size.height * 0.3518638);
    path_41.lineTo(size.width * 0.2887221, size.height * 0.1931662);
    path_41.lineTo(size.width * 0.4014721, size.height * 0.1823448);
    path_41.lineTo(size.width * 0.4354056, size.height * 0.1791088);
    path_41.arcToPoint(Offset(size.width * 0.5495250, size.height * 0.1791088),
        radius:
            Radius.elliptical(size.width * 0.2178312, size.height * 0.07784396),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_41.lineTo(size.width * 0.5877150, size.height * 0.1827791);
    path_41.lineTo(size.width * 0.6962027, size.height * 0.1931642);
    path_41.lineTo(size.width * 0.6942284, size.height * 0.3518597);
    path_41.close();

    canvas.drawPath(path_41, green);

    final Path path_42 = Path();
    path_42.moveTo(size.width * 0.5877150, size.height * 0.1827791);
    path_42.lineTo(size.width * 0.5877150, size.height * 0.5060999);
    path_42.arcToPoint(Offset(size.width * 0.4924653, size.height * 0.5102290),
        radius:
            Radius.elliptical(size.width * 0.3755043, size.height * 0.1341899),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_42.arcToPoint(Offset(size.width * 0.4088557, size.height * 0.5070236),
        radius:
            Radius.elliptical(size.width * 0.3648683, size.height * 0.1303890),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_42.lineTo(size.width * 0.4087016, size.height * 0.4989754);
    path_42.lineTo(size.width * 0.4084734, size.height * 0.4905478);
    path_42.lineTo(size.width * 0.4080169, size.height * 0.4709727);
    path_42.lineTo(size.width * 0.4078628, size.height * 0.4625451);
    path_42.lineTo(size.width * 0.4074064, size.height * 0.4429965);
    path_42.lineTo(size.width * 0.4071781, size.height * 0.4345689);
    path_42.lineTo(size.width * 0.4067958, size.height * 0.4150203);
    path_42.lineTo(size.width * 0.4065676, size.height * 0.4066193);
    path_42.lineTo(size.width * 0.4061111, size.height * 0.3870706);
    path_42.lineTo(size.width * 0.4059570, size.height * 0.3786961);
    path_42.lineTo(size.width * 0.4055006, size.height * 0.3591209);
    path_42.lineTo(size.width * 0.4052723, size.height * 0.3507199);
    path_42.lineTo(size.width * 0.4048158, size.height * 0.3311447);
    path_42.lineTo(size.width * 0.4046618, size.height * 0.3227702);
    path_42.lineTo(size.width * 0.4042053, size.height * 0.3031685);
    path_42.lineTo(size.width * 0.4040512, size.height * 0.2948226);
    path_42.lineTo(size.width * 0.4035948, size.height * 0.2751923);
    path_42.lineTo(size.width * 0.4033665, size.height * 0.2668729);
    path_42.lineTo(size.width * 0.4029100, size.height * 0.2472427);
    path_42.lineTo(size.width * 0.4027560, size.height * 0.2389232);
    path_42.lineTo(size.width * 0.4022995, size.height * 0.2193215);
    path_42.lineTo(size.width * 0.4021454, size.height * 0.2110021);
    path_42.lineTo(size.width * 0.4017004, size.height * 0.1913433);
    path_42.lineTo(size.width * 0.4014721, size.height * 0.1830503);
    path_42.lineTo(size.width * 0.4014721, size.height * 0.1823448);
    path_42.lineTo(size.width * 0.4354056, size.height * 0.1791088);
    path_42.arcToPoint(Offset(size.width * 0.5495250, size.height * 0.1791088),
        radius:
            Radius.elliptical(size.width * 0.2178312, size.height * 0.07784396),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_42.lineTo(size.width * 0.5873327, size.height * 0.1827526);
    path_42.close();

    canvas.drawPath(path_42, white);

    final Path path_43 = Path();
    path_43.moveTo(size.width * 0.5877150, size.height * 0.1913881);
    path_43.lineTo(size.width * 0.5877150, size.height * 0.1995995);
    path_43.arcToPoint(Offset(size.width * 0.4943654, size.height * 0.2023176),
        radius:
            Radius.elliptical(size.width * 0.5481270, size.height * 0.1958782),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_43.arcToPoint(Offset(size.width * 0.4017004, size.height * 0.1999523),
        radius:
            Radius.elliptical(size.width * 0.6620524, size.height * 0.2365905),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_43.lineTo(size.width * 0.4014721, size.height * 0.1916593);
    path_43.arcToPoint(Offset(size.width * 0.5873327, size.height * 0.1913616),
        radius:
            Radius.elliptical(size.width * 0.6047017, size.height * 0.2160957),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_43.close();
    canvas.drawPath(path_43, grey);

    canvas.drawLine(
        Offset(size.width * animation.leftHand.h0.x,
            size.height * animation.leftHand.h0.y),
        Offset(size.width * animation.leftHand.h1.x,
            size.height * animation.leftHand.h1.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.leftHand.h1.x,
            size.height * animation.leftHand.h1.y),
        Offset(size.width * animation.leftHand.h2.x,
            size.height * animation.leftHand.h2.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.leftHand.h2.x,
            size.height * animation.leftHand.h2.y),
        Offset(size.width * animation.leftHand.h3.x,
            size.height * animation.leftHand.h3.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.leftHand.h3.x,
            size.height * animation.leftHand.h3.y),
        Offset(size.width * animation.leftHand.h4.x,
            size.height * animation.leftHand.h4.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.leftHand.h5.x,
            size.height * animation.leftHand.h5.y),
        Offset(size.width * animation.leftHand.h6.x,
            size.height * animation.leftHand.h6.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h6.x,
            size.height * animation.leftHand.h6.y),
        Offset(size.width * animation.leftHand.h7.x,
            size.height * animation.leftHand.h7.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h7.x,
            size.height * animation.leftHand.h7.y),
        Offset(size.width * animation.leftHand.h8.x,
            size.height * animation.leftHand.h8.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h9.x,
            size.height * animation.leftHand.h9.y),
        Offset(size.width * animation.leftHand.h10.x,
            size.height * animation.leftHand.h10.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h10.x,
            size.height * animation.leftHand.h10.y),
        Offset(size.width * animation.leftHand.h11.x,
            size.height * animation.leftHand.h11.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h11.x,
            size.height * animation.leftHand.h11.y),
        Offset(size.width * animation.leftHand.h12.x,
            size.height * animation.leftHand.h12.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.leftHand.h13.x,
            size.height * animation.leftHand.h13.y),
        Offset(size.width * animation.leftHand.h14.x,
            size.height * animation.leftHand.h14.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h14.x,
            size.height * animation.leftHand.h14.y),
        Offset(size.width * animation.leftHand.h15.x,
            size.height * animation.leftHand.h15.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h15.x,
            size.height * animation.leftHand.h15.y),
        Offset(size.width * animation.leftHand.h16.x,
            size.height * animation.leftHand.h16.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.leftHand.h17.x,
            size.height * animation.leftHand.h17.y),
        Offset(size.width * animation.leftHand.h18.x,
            size.height * animation.leftHand.h18.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h18.x,
            size.height * animation.leftHand.h18.y),
        Offset(size.width * animation.leftHand.h19.x,
            size.height * animation.leftHand.h19.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.leftHand.h19.x,
            size.height * animation.leftHand.h19.y),
        Offset(size.width * animation.leftHand.h20.x,
            size.height * animation.leftHand.h20.y),
        fingures);

    final Path path_44 = Path();
    path_44.moveTo(size.width * 0.5877150, size.height * 0.2147703);
    path_44.lineTo(size.width * 0.5877150, size.height * 0.2230347);
    path_44.arcToPoint(Offset(size.width * 0.4957348, size.height * 0.2257548),
        radius:
            Radius.elliptical(size.width * 0.5404068, size.height * 0.1931193),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_44.arcToPoint(Offset(size.width * 0.4023109, size.height * 0.2232794),
        radius:
            Radius.elliptical(size.width * 0.6444267, size.height * 0.2302918),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_44.lineTo(size.width * 0.4021569, size.height * 0.2149599);
    path_44.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.2147703),
        radius:
            Radius.elliptical(size.width * 0.5896208, size.height * 0.2107064),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_44, grey);

    final Path path_45 = Path();
    path_45.moveTo(size.width * 0.5877150, size.height * 0.2388131);
    path_45.lineTo(size.width * 0.5877150, size.height * 0.2471325);
    path_45.arcToPoint(Offset(size.width * 0.4970300, size.height * 0.2498506),
        radius:
            Radius.elliptical(size.width * 0.5252404, size.height * 0.1876994),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_45.arcToPoint(Offset(size.width * 0.4029215, size.height * 0.2472406),
        radius:
            Radius.elliptical(size.width * 0.6186471, size.height * 0.2210792),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_45.lineTo(size.width * 0.4027674, size.height * 0.2389212);
    path_45.cubicTo(
        size.width * 0.4459045,
        size.height * 0.2413416,
        size.width * 0.5155174,
        size.height * 0.2435703,
        size.width * 0.5877150,
        size.height * 0.2388131);

    canvas.drawPath(path_45, grey);

    final Path path_46 = Path();
    path_46.moveTo(size.width * 0.5877150, size.height * 0.2668708);
    path_46.lineTo(size.width * 0.5877150, size.height * 0.2751903);
    path_46.arcToPoint(Offset(size.width * 0.4981712, size.height * 0.2779084),
        radius:
            Radius.elliptical(size.width * 0.5119968, size.height * 0.1829667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_46.arcToPoint(Offset(size.width * 0.4036005, size.height * 0.2751903),
        radius:
            Radius.elliptical(size.width * 0.6019172, size.height * 0.2151006),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_46.lineTo(size.width * 0.4033722, size.height * 0.2668708);
    path_46.cubicTo(
        size.width * 0.4465094,
        size.height * 0.2693728,
        size.width * 0.5157456,
        size.height * 0.2716831,
        size.width * 0.5877150,
        size.height * 0.2668708);

    canvas.drawPath(path_46, grey);

    final Path path_47 = Path();
    path_47.moveTo(size.width * 0.5877150, size.height * 0.2949551);
    path_47.lineTo(size.width * 0.5877150, size.height * 0.3032481);
    path_47.arcToPoint(Offset(size.width * 0.4992325, size.height * 0.3059927),
        radius:
            Radius.elliptical(size.width * 0.4988902, size.height * 0.1782830),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_47.arcToPoint(Offset(size.width * 0.4042110, size.height * 0.3031665),
        radius:
            Radius.elliptical(size.width * 0.5848963, size.height * 0.2090180),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_47.lineTo(size.width * 0.4040569, size.height * 0.2948205);
    path_47.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.2949551),
        radius:
            Radius.elliptical(size.width * 0.5344498, size.height * 0.1909905),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_47, grey);

    final Path path_48 = Path();
    path_48.moveTo(size.width * 0.5877150, size.height * 0.3229904);
    path_48.lineTo(size.width * 0.5877150, size.height * 0.3313099);
    path_48.arcToPoint(Offset(size.width * 0.5002996, size.height * 0.3340565),
        radius:
            Radius.elliptical(size.width * 0.4810933, size.height * 0.1719231),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_48.arcToPoint(Offset(size.width * 0.4048215, size.height * 0.3311468),
        radius:
            Radius.elliptical(size.width * 0.5797267, size.height * 0.2071706),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_48.lineTo(size.width * 0.4046675, size.height * 0.3227723);
    path_48.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.3229904),
        radius:
            Radius.elliptical(size.width * 0.5153576, size.height * 0.1841678),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_48, grey);

    final Path path_49 = Path();
    path_49.moveTo(size.width * 0.5877150, size.height * 0.3510421);
    path_49.lineTo(size.width * 0.5877150, size.height * 0.3593615);
    path_49.arcToPoint(Offset(size.width * 0.5012125, size.height * 0.3621347),
        radius:
            Radius.elliptical(size.width * 0.4712219, size.height * 0.1683955),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_49.arcToPoint(Offset(size.width * 0.4055063, size.height * 0.3591168),
        radius:
            Radius.elliptical(size.width * 0.5568001, size.height * 0.1989776),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_49.lineTo(size.width * 0.4052780, size.height * 0.3507158);
    path_49.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.3510421),
        radius:
            Radius.elliptical(size.width * 0.5022225, size.height * 0.1794738),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_49, grey);

    final Path path_50 = Path();
    path_50.moveTo(size.width * 0.5877150, size.height * 0.3791019);
    path_50.lineTo(size.width * 0.5877150, size.height * 0.3874254);
    path_50.arcToPoint(Offset(size.width * 0.5021255, size.height * 0.3902251),
        radius:
            Radius.elliptical(size.width * 0.4561639, size.height * 0.1630143),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_50.arcToPoint(Offset(size.width * 0.4061111, size.height * 0.3870726),
        radius:
            Radius.elliptical(size.width * 0.5347693, size.height * 0.1911047),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_50.lineTo(size.width * 0.4059627, size.height * 0.3786981);
    path_50.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.3791059),
        radius:
            Radius.elliptical(size.width * 0.4894354, size.height * 0.1749042),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_50, grey);

    final Path path_51 = Path();
    path_51.moveTo(size.width * 0.5877150, size.height * 0.4071596);
    path_51.lineTo(size.width * 0.5877150, size.height * 0.4155056);
    path_51.arcToPoint(Offset(size.width * 0.5028844, size.height * 0.4182787),
        radius:
            Radius.elliptical(size.width * 0.4532824, size.height * 0.1619846),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_51.arcToPoint(Offset(size.width * 0.4067958, size.height * 0.4150162),
        radius:
            Radius.elliptical(size.width * 0.5199852, size.height * 0.1858215),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_51.lineTo(size.width * 0.4065676, size.height * 0.4066152);
    path_51.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.4071596),
        radius:
            Radius.elliptical(size.width * 0.4739836, size.height * 0.1693824),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_51, grey);

    final Path path_52 = Path();
    path_52.moveTo(size.width * 0.5877150, size.height * 0.4352153);
    path_52.lineTo(size.width * 0.5877150, size.height * 0.4435348);
    path_52.arcToPoint(Offset(size.width * 0.5036490, size.height * 0.4463548),
        radius:
            Radius.elliptical(size.width * 0.4399304, size.height * 0.1572131),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_52.arcToPoint(Offset(size.width * 0.4074064, size.height * 0.4429904),
        radius:
            Radius.elliptical(size.width * 0.5069927, size.height * 0.1811785),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_52.lineTo(size.width * 0.4071781, size.height * 0.4345628);
    path_52.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.4352153),
        radius:
            Radius.elliptical(size.width * 0.4624747, size.height * 0.1652696),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_52, grey);

    final Path path_53 = Path();
    path_53.moveTo(size.width * 0.5877150, size.height * 0.4632466);
    path_53.lineTo(size.width * 0.5877150, size.height * 0.4716211);
    path_53.arcToPoint(Offset(size.width * 0.5044079, size.height * 0.4744473),
        radius:
            Radius.elliptical(size.width * 0.4328721, size.height * 0.1546908),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_53.arcToPoint(Offset(size.width * 0.4080169, size.height * 0.4709686),
        radius:
            Radius.elliptical(size.width * 0.4883056, size.height * 0.1745005),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_53.lineTo(size.width * 0.4078628, size.height * 0.4625390);
    path_53.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.4632466),
        radius:
            Radius.elliptical(size.width * 0.4500185, size.height * 0.1608182),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_53, grey);

    final Path path_54 = Path();
    path_54.moveTo(size.width * 0.5877150, size.height * 0.4913043);
    path_54.lineTo(size.width * 0.5877150, size.height * 0.4996788);
    path_54.arcToPoint(Offset(size.width * 0.5050926, size.height * 0.5025050),
        radius:
            Radius.elliptical(size.width * 0.4255171, size.height * 0.1520624),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_54.arcToPoint(Offset(size.width * 0.4087016, size.height * 0.4989631),
        radius:
            Radius.elliptical(size.width * 0.4827594, size.height * 0.1725185),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_54.lineTo(size.width * 0.4084734, size.height * 0.4905356);
    path_54.arcToPoint(Offset(size.width * 0.5877150, size.height * 0.4912962),
        radius:
            Radius.elliptical(size.width * 0.4411401, size.height * 0.1576454),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_54, grey);

    final Path path_58 = Path();
    path_58.moveTo(size.width * 0.5516875, size.height * 0.1563975);
    path_58.lineTo(size.width * 0.5497247, size.height * 0.1695781);
    path_58.lineTo(size.width * 0.5472654, size.height * 0.1860947);
    path_58.cubicTo(
        size.width * 0.5472654,
        size.height * 0.1860947,
        size.width * 0.5380902,
        size.height * 0.1923118,
        size.width * 0.4966877,
        size.height * 0.1923118);
    path_58.cubicTo(
        size.width * 0.4552852,
        size.height * 0.1923118,
        size.width * 0.4467776,
        size.height * 0.1880726,
        size.width * 0.4467776,
        size.height * 0.1880726);
    path_58.lineTo(size.width * 0.4451114, size.height * 0.1807462);
    path_58.lineTo(size.width * 0.4395481, size.height * 0.1563975);
    path_58.close();

    canvas.drawPath(path_58, lightSkin);

    final Path path_59 = Path();
    path_59.moveTo(size.width * 0.5516875, size.height * 0.1563975);
    path_59.lineTo(size.width * 0.5497247, size.height * 0.1695781);
    path_59.cubicTo(
        size.width * 0.5324527,
        size.height * 0.1741967,
        size.width * 0.4915637,
        size.height * 0.1832869,
        size.width * 0.4451171,
        size.height * 0.1807339);
    path_59.lineTo(size.width * 0.4395481, size.height * 0.1563975);
    path_59.close();

    canvas.drawPath(path_59, darkYellow);

    final Path path_60 = Path();
    path_60.moveTo(size.width * 0.3687997, size.height * 0.09647504);
    path_60.cubicTo(
        size.width * 0.3687997,
        size.height * 0.09647504,
        size.width * 0.3370745,
        size.height * 0.08538244,
        size.width * 0.3117400,
        size.height * 0.09262322);
    path_60.cubicTo(
        size.width * 0.2818008,
        size.height * 0.1011649,
        size.width * 0.3131095,
        size.height * 0.1319551,
        size.width * 0.3662035,
        size.height * 0.1286925);
    path_60.close();

    canvas.drawPath(path_60, lightSkin);

    final Path path_61 = Path();
    path_61.moveTo(size.width * 0.3502839, size.height * 0.1210317);
    path_61.arcToPoint(Offset(size.width * 0.3452341, size.height * 0.1193087),
        radius: Radius.elliptical(
            size.width * 0.005255200, size.height * 0.001877994),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_61.cubicTo(
        size.width * 0.3418105,
        size.height * 0.1041624,
        size.width * 0.3170066,
        size.height * 0.1015360,
        size.width * 0.3159510,
        size.height * 0.1014320);
    path_61.arcToPoint(Offset(size.width * 0.3122593, size.height * 0.09913400),
        radius: Radius.elliptical(
            size.width * 0.005283729, size.height * 0.001888189),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_61.arcToPoint(Offset(size.width * 0.3186271, size.height * 0.09780248),
        radius: Radius.elliptical(
            size.width * 0.005220964, size.height * 0.001865759),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_61.cubicTo(
        size.width * 0.3199795,
        size.height * 0.09792483,
        size.width * 0.3516590,
        size.height * 0.1010650,
        size.width * 0.3557160,
        size.height * 0.1190089);
    path_61.arcToPoint(Offset(size.width * 0.3508944, size.height * 0.1210317),
        radius: Radius.elliptical(
            size.width * 0.005249494, size.height * 0.001875955),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_61.arcToPoint(Offset(size.width * 0.3502839, size.height * 0.1210317),
        radius: Radius.elliptical(
            size.width * 0.005420673, size.height * 0.001937127),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_61, darkSkin);

    final Path path_62 = Path();
    path_62.moveTo(size.width * 0.3206128, size.height * 0.1133117);
    path_62.arcToPoint(Offset(size.width * 0.3171892, size.height * 0.1127979),
        radius: Radius.elliptical(
            size.width * 0.005186728, size.height * 0.001853525),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_62.arcToPoint(Offset(size.width * 0.3170009, size.height * 0.1101471),
        radius: Radius.elliptical(
            size.width * 0.005243788, size.height * 0.001873915),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_62.arcToPoint(Offset(size.width * 0.3453026, size.height * 0.1075921),
        radius: Radius.elliptical(
            size.width * 0.02979088, size.height * 0.01064604),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_62.arcToPoint(Offset(size.width * 0.3427006, size.height * 0.1112278),
        radius: Radius.elliptical(
            size.width * 0.005250598, size.height * 0.001876349),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_62.arcToPoint(Offset(size.width * 0.3246070, size.height * 0.1127306),
        radius: Radius.elliptical(
            size.width * 0.01906936, size.height * 0.006814609),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_62.arcToPoint(Offset(size.width * 0.3206128, size.height * 0.1133117),
        radius: Radius.elliptical(
            size.width * 0.005215258, size.height * 0.001863720),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_62, darkSkin);

    final Path path_63 = Path();
    path_63.moveTo(size.width * 0.6112465, size.height * 0.09647504);
    path_63.cubicTo(
        size.width * 0.6112465,
        size.height * 0.09647504,
        size.width * 0.6429717,
        size.height * 0.08538244,
        size.width * 0.6683062,
        size.height * 0.09262322);
    path_63.cubicTo(
        size.width * 0.6982454,
        size.height * 0.1011649,
        size.width * 0.6669367,
        size.height * 0.1319551,
        size.width * 0.6138427,
        size.height * 0.1286925);
    path_63.close();

    canvas.drawPath(path_63, lightSkin);

    final Path path_64 = Path();
    path_64.moveTo(size.width * 0.6297623, size.height * 0.1210317);
    path_64.arcToPoint(Offset(size.width * 0.6348121, size.height * 0.1193087),
        radius: Radius.elliptical(
            size.width * 0.005255200, size.height * 0.001877994),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_64.cubicTo(
        size.width * 0.6382357,
        size.height * 0.1041624,
        size.width * 0.6630396,
        size.height * 0.1015360,
        size.width * 0.6640952,
        size.height * 0.1014320);
    path_64.arcToPoint(Offset(size.width * 0.6677869, size.height * 0.09913400),
        radius: Radius.elliptical(
            size.width * 0.005283729, size.height * 0.001888189),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_64.arcToPoint(Offset(size.width * 0.6614191, size.height * 0.09780248),
        radius: Radius.elliptical(
            size.width * 0.005220964, size.height * 0.001865759),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_64.cubicTo(
        size.width * 0.6600668,
        size.height * 0.09792483,
        size.width * 0.6283872,
        size.height * 0.1010650,
        size.width * 0.6243303,
        size.height * 0.1190089);
    path_64.arcToPoint(Offset(size.width * 0.6291518, size.height * 0.1210317),
        radius: Radius.elliptical(
            size.width * 0.005249494, size.height * 0.001875955),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_64.arcToPoint(Offset(size.width * 0.6297623, size.height * 0.1210317),
        radius: Radius.elliptical(
            size.width * 0.005420673, size.height * 0.001937127),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_64, darkSkin);

    final Path path_65 = Path();
    path_65.moveTo(size.width * 0.6594334, size.height * 0.1133117);
    path_65.arcToPoint(Offset(size.width * 0.6628570, size.height * 0.1127979),
        radius: Radius.elliptical(
            size.width * 0.005186728, size.height * 0.001853525),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_65.arcToPoint(Offset(size.width * 0.6630453, size.height * 0.1101471),
        radius: Radius.elliptical(
            size.width * 0.005243788, size.height * 0.001873915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_65.arcToPoint(Offset(size.width * 0.6347437, size.height * 0.1075921),
        radius: Radius.elliptical(
            size.width * 0.02979088, size.height * 0.01064604),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_65.arcToPoint(Offset(size.width * 0.6373456, size.height * 0.1112278),
        radius: Radius.elliptical(
            size.width * 0.005250598, size.height * 0.001876349),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_65.arcToPoint(Offset(size.width * 0.6554392, size.height * 0.1127306),
        radius: Radius.elliptical(
            size.width * 0.01906936, size.height * 0.006814609),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_65.arcToPoint(Offset(size.width * 0.6594334, size.height * 0.1133117),
        radius: Radius.elliptical(
            size.width * 0.005215258, size.height * 0.001863720),
        rotation: 0,
        largeArc: false,
        clockwise: false);

    canvas.drawPath(path_65, darkSkin);

    final Path path_66 = Path();
    path_66.moveTo(size.width * 0.4916151, size.height * 0.1693436);
    path_66.cubicTo(
        size.width * 0.3819920,
        size.height * 0.1693436,
        size.width * 0.3481498,
        size.height * 0.1228139,
        size.width * 0.3380617,
        size.height * 0.08875100);
    path_66.arcToPoint(Offset(size.width * 0.4853784, size.height * 0.02929956),
        radius:
            Radius.elliptical(size.width * 0.1504265, size.height * 0.05375629),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_66.lineTo(size.width * 0.4933097, size.height * 0.02929956);
    path_66.arcToPoint(Offset(size.width * 0.6410602, size.height * 0.08772942),
        radius:
            Radius.elliptical(size.width * 0.1505463, size.height * 0.05379911),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_66.cubicTo(
        size.width * 0.6326838,
        size.height * 0.1222409,
        size.width * 0.6011697,
        size.height * 0.1693436,
        size.width * 0.4916151,
        size.height * 0.1693436);

    canvas.drawPath(path_66, lightSkin);

    final Path path_67 = Path();
    path_67.moveTo(size.width * 0.6307951, size.height * 0.004265758);
    path_67.cubicTo(
        size.width * 0.6864112,
        size.height * 0.01786031,
        size.width * 0.6360960,
        size.height * 0.04436836,
        size.width * 0.6360960,
        size.height * 0.04436836);
    path_67.cubicTo(
        size.width * 0.6360960,
        size.height * 0.04436836,
        size.width * 0.6914439,
        size.height * 0.06373963,
        size.width * 0.6344698,
        size.height * 0.1093396);
    path_67.lineTo(size.width * 0.6243188, size.height * 0.1085994);
    path_67.cubicTo(
        size.width * 0.6307951,
        size.height * 0.09399756,
        size.width * 0.6269037,
        size.height * 0.07622493,
        size.width * 0.6243188,
        size.height * 0.07342323);
    path_67.cubicTo(
        size.width * 0.6166101,
        size.height * 0.06508747,
        size.width * 0.5756754,
        size.height * 0.06064431,
        size.width * 0.5777752,
        size.height * 0.05163157);
    path_67.cubicTo(
        size.width * 0.5777752,
        size.height * 0.05163157,
        size.width * 0.4522952,
        size.height * 0.06565229,
        size.width * 0.3843885,
        size.height * 0.05188442);
    path_67.cubicTo(
        size.width * 0.3843885,
        size.height * 0.05188442,
        size.width * 0.3790306,
        size.height * 0.06343377,
        size.width * 0.3604234,
        size.height * 0.07071941);
    path_67.cubicTo(
        size.width * 0.3448575,
        size.height * 0.07681422,
        size.width * 0.3537189,
        size.height * 0.09804309,
        size.width * 0.3557217,
        size.height * 0.1072190);
    path_67.lineTo(size.width * 0.3452969, size.height * 0.1075860);
    path_67.cubicTo(
        size.width * 0.3391173,
        size.height * 0.09823069,
        size.width * 0.3240307,
        size.height * 0.08138176,
        size.width * 0.3224102,
        size.height * 0.07642068);
    path_67.cubicTo(
        size.width * 0.3213888,
        size.height * 0.07329069,
        size.width * 0.3176628,
        size.height * 0.06088288,
        size.width * 0.3160652,
        size.height * 0.05201084);
    path_67.arcToPoint(Offset(size.width * 0.3284072, size.height * 0.02946880),
        radius:
            Radius.elliptical(size.width * 0.1222048, size.height * 0.04367100),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_67.arcToPoint(Offset(size.width * 0.3518644, size.height * 0.01899404),
        radius: Radius.elliptical(
            size.width * 0.08257111, size.height * 0.02950754),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_67.cubicTo(
        size.width * 0.3883199,
        size.height * 0.009290053,
        size.width * 0.5803543,
        size.height * -0.008064565,
        size.width * 0.6307951,
        size.height * 0.004265758);

    canvas.drawPath(path_67, black);

    final Path path_68 = Path();
    path_68.moveTo(size.width * 0.4403298, size.height * 0.09641387);
    path_68.cubicTo(
        size.width * 0.4403298,
        size.height * 0.1003289,
        size.width * 0.4354512,
        size.height * 0.1035017,
        size.width * 0.4294371,
        size.height * 0.1035017);
    path_68.cubicTo(
        size.width * 0.4234230,
        size.height * 0.1035017,
        size.width * 0.4185330,
        size.height * 0.1003228,
        size.width * 0.4185330,
        size.height * 0.09641387);
    path_68.cubicTo(
        size.width * 0.4185330,
        size.height * 0.09250495,
        size.width * 0.4234002,
        size.height * 0.08932602,
        size.width * 0.4294257,
        size.height * 0.08932602);
    path_68.cubicTo(
        size.width * 0.4354512,
        size.height * 0.08932602,
        size.width * 0.4403298,
        size.height * 0.09249883,
        size.width * 0.4403298,
        size.height * 0.09641387);

    canvas.drawPath(path_68, black);

    final Path path_69 = Path();
    path_69.moveTo(size.width * 0.3849191, size.height * 0.08126146);
    path_69.cubicTo(
        size.width * 0.3849191,
        size.height * 0.08126146,
        size.width * 0.3954010,
        size.height * 0.07355985,
        size.width * 0.4155431,
        size.height * 0.07163088);
    path_69.arcToPoint(Offset(size.width * 0.4541839, size.height * 0.07285433),
        radius: Radius.elliptical(
            size.width * 0.05139939, size.height * 0.01836804),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_69.arcToPoint(Offset(size.width * 0.4480671, size.height * 0.07713640),
        radius: Radius.elliptical(
            size.width * 0.006726747, size.height * 0.002403865),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_69.cubicTo(
        size.width * 0.4367750,
        size.height * 0.07526860,
        size.width * 0.4119369,
        size.height * 0.07285433,
        size.width * 0.3849191,
        size.height * 0.08127165);

    canvas.drawPath(path_69, black);

    final Path path_70 = Path();
    path_70.moveTo(size.width * 0.5472026, size.height * 0.09641387);
    path_70.cubicTo(
        size.width * 0.5472026,
        size.height * 0.1003289,
        size.width * 0.5520813,
        size.height * 0.1035017,
        size.width * 0.5580953,
        size.height * 0.1035017);
    path_70.cubicTo(
        size.width * 0.5641094,
        size.height * 0.1035017,
        size.width * 0.5689995,
        size.height * 0.1003289,
        size.width * 0.5689995,
        size.height * 0.09641387);
    path_70.cubicTo(
        size.width * 0.5689995,
        size.height * 0.09249883,
        size.width * 0.5641323,
        size.height * 0.08932602,
        size.width * 0.5581068,
        size.height * 0.08932602);
    path_70.cubicTo(
        size.width * 0.5520813,
        size.height * 0.08932602,
        size.width * 0.5472026,
        size.height * 0.09249883,
        size.width * 0.5472026,
        size.height * 0.09641387);

    canvas.drawPath(path_70, black);

    final Path path_71 = Path();
    path_71.moveTo(size.width * 0.6026076, size.height * 0.08126146);
    path_71.cubicTo(
        size.width * 0.6026076,
        size.height * 0.08126146,
        size.width * 0.5921258,
        size.height * 0.07355985,
        size.width * 0.5719837,
        size.height * 0.07163088);
    path_71.arcToPoint(Offset(size.width * 0.5333428, size.height * 0.07285433),
        radius: Radius.elliptical(
            size.width * 0.05139939, size.height * 0.01836804),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_71.arcToPoint(Offset(size.width * 0.5394596, size.height * 0.07713640),
        radius: Radius.elliptical(
            size.width * 0.006726747, size.height * 0.002403865),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_71.cubicTo(
        size.width * 0.5507518,
        size.height * 0.07526860,
        size.width * 0.5755899,
        size.height * 0.07285433,
        size.width * 0.6026076,
        size.height * 0.08127165);

    canvas.drawPath(path_71, black);

    final Path path_72 = Path();
    path_72.moveTo(size.width * 0.4918547, size.height * 0.1204424);
    path_72.arcToPoint(Offset(size.width * 0.4893840, size.height * 0.1166314),
        radius: Radius.elliptical(
            size.width * 0.005774443, size.height * 0.002063550),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_72.lineTo(size.width * 0.5058686, size.height * 0.1129896);
    path_72.lineTo(size.width * 0.4929274, size.height * 0.1112890);
    path_72.arcToPoint(Offset(size.width * 0.4891558, size.height * 0.1094762),
        radius: Radius.elliptical(
            size.width * 0.005774443, size.height * 0.002063550),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_72.lineTo(size.width * 0.4869248, size.height * 0.09617733);
    path_72.arcToPoint(Offset(size.width * 0.4984622, size.height * 0.09593061),
        radius: Radius.elliptical(
            size.width * 0.005780149, size.height * 0.002065589),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_72.lineTo(size.width * 0.5004650, size.height * 0.1078715);
    path_72.lineTo(size.width * 0.5210065, size.height * 0.1105732);
    path_72.arcToPoint(Offset(size.width * 0.5220450, size.height * 0.1142681),
        radius: Radius.elliptical(
            size.width * 0.005780149, size.height * 0.002065589),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_72.lineTo(size.width * 0.4954552, size.height * 0.1201427);
    path_72.arcToPoint(Offset(size.width * 0.4918547, size.height * 0.1204424),
        radius: Radius.elliptical(
            size.width * 0.005705971, size.height * 0.002039081),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_72, darkSkin);

    final Path path_73 = Path();
    path_73.moveTo(size.width * 0.5162934, size.height * 0.1404927);
    path_73.arcToPoint(Offset(size.width * 0.4394739, size.height * 0.1355071),
        radius:
            Radius.elliptical(size.width * 0.1007503, size.height * 0.03600405),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_73.arcToPoint(Offset(size.width * 0.4457505, size.height * 0.1320733),
        radius: Radius.elliptical(
            size.width * 0.005745913, size.height * 0.002053355),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_73.cubicTo(
        size.width * 0.4937776,
        size.height * 0.1433290,
        size.width * 0.5461756,
        size.height * 0.1323200,
        size.width * 0.5466777,
        size.height * 0.1322059);
    path_73.arcToPoint(Offset(size.width * 0.5526005, size.height * 0.1357233),
        radius: Radius.elliptical(
            size.width * 0.005745913, size.height * 0.002053355),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_73.arcToPoint(Offset(size.width * 0.5162934, size.height * 0.1404927),
        radius:
            Radius.elliptical(size.width * 0.1228553, size.height * 0.04390345),
        rotation: 0,
        largeArc: false,
        clockwise: true);

    canvas.drawPath(path_73, darkSkin);

    canvas.drawLine(
        Offset(size.width * animation.leftArm.a0.x,
            size.height * animation.leftArm.a0.y),
        Offset(size.width * animation.leftArm.a1.x,
            size.height * animation.leftArm.a1.y),
        arms);

    canvas.drawLine(
        Offset(size.width * animation.leftArm.a1.x,
            size.height * animation.leftArm.a1.y),
        Offset(size.width * animation.leftArm.a2.x,
            size.height * animation.leftArm.a2.y),
        arms);
    final Path leftBalm = Path();
    leftBalm.moveTo(size.width * animation.leftHand.h0.x,
        size.height * animation.leftHand.h0.y);
    leftBalm.lineTo(size.width * animation.leftHand.h17.x,
        size.height * animation.leftHand.h17.y);
    leftBalm.lineTo(size.width * animation.leftHand.h13.x,
        size.height * animation.leftHand.h13.y);
    leftBalm.lineTo(size.width * animation.leftHand.h9.x,
        size.height * animation.leftHand.h9.y);
    leftBalm.lineTo(size.width * animation.leftHand.h5.x,
        size.height * animation.leftHand.h5.y);
    leftBalm.lineTo(size.width * animation.leftHand.h1.x,
        size.height * animation.leftHand.h1.y);

    leftBalm.close();

    canvas.drawPath(leftBalm, darkSkin);

    canvas.drawLine(
        Offset(size.width * animation.rightHand.h0.x,
            size.height * animation.rightHand.h0.y),
        Offset(size.width * animation.rightHand.h1.x,
            size.height * animation.rightHand.h1.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.rightHand.h1.x,
            size.height * animation.rightHand.h1.y),
        Offset(size.width * animation.rightHand.h2.x,
            size.height * animation.rightHand.h2.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.rightHand.h2.x,
            size.height * animation.rightHand.h2.y),
        Offset(size.width * animation.rightHand.h3.x,
            size.height * animation.rightHand.h3.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.rightHand.h3.x,
            size.height * animation.rightHand.h3.y),
        Offset(size.width * animation.rightHand.h4.x,
            size.height * animation.rightHand.h4.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.rightHand.h5.x,
            size.height * animation.rightHand.h5.y),
        Offset(size.width * animation.rightHand.h6.x,
            size.height * animation.rightHand.h6.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h6.x,
            size.height * animation.rightHand.h6.y),
        Offset(size.width * animation.rightHand.h7.x,
            size.height * animation.rightHand.h7.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h7.x,
            size.height * animation.rightHand.h7.y),
        Offset(size.width * animation.rightHand.h8.x,
            size.height * animation.rightHand.h8.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h9.x,
            size.height * animation.rightHand.h9.y),
        Offset(size.width * animation.rightHand.h10.x,
            size.height * animation.rightHand.h10.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h10.x,
            size.height * animation.rightHand.h10.y),
        Offset(size.width * animation.rightHand.h11.x,
            size.height * animation.rightHand.h11.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h11.x,
            size.height * animation.rightHand.h11.y),
        Offset(size.width * animation.rightHand.h12.x,
            size.height * animation.rightHand.h12.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.rightHand.h13.x,
            size.height * animation.rightHand.h13.y),
        Offset(size.width * animation.rightHand.h14.x,
            size.height * animation.rightHand.h14.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h14.x,
            size.height * animation.rightHand.h14.y),
        Offset(size.width * animation.rightHand.h15.x,
            size.height * animation.rightHand.h15.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h15.x,
            size.height * animation.rightHand.h15.y),
        Offset(size.width * animation.rightHand.h16.x,
            size.height * animation.rightHand.h16.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.rightHand.h17.x,
            size.height * animation.rightHand.h17.y),
        Offset(size.width * animation.rightHand.h18.x,
            size.height * animation.rightHand.h18.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h18.x,
            size.height * animation.rightHand.h18.y),
        Offset(size.width * animation.rightHand.h19.x,
            size.height * animation.rightHand.h19.y),
        fingures);
    canvas.drawLine(
        Offset(size.width * animation.rightHand.h19.x,
            size.height * animation.rightHand.h19.y),
        Offset(size.width * animation.rightHand.h20.x,
            size.height * animation.rightHand.h20.y),
        fingures);

    canvas.drawLine(
        Offset(size.width * animation.rightArm.a0.x,
            size.height * animation.rightArm.a0.y),
        Offset(size.width * animation.rightArm.a1.x,
            size.height * animation.rightArm.a1.y),
        arms);

    canvas.drawLine(
        Offset(size.width * animation.rightArm.a1.x,
            size.height * animation.rightArm.a1.y),
        Offset(size.width * animation.rightArm.a2.x,
            size.height * animation.rightArm.a2.y),
        arms);

    final Path rightBalm = Path();
    rightBalm.moveTo(size.width * animation.rightHand.h0.x,
        size.height * animation.rightHand.h0.y);
    rightBalm.lineTo(size.width * animation.rightHand.h17.x,
        size.height * animation.rightHand.h17.y);
    rightBalm.lineTo(size.width * animation.rightHand.h13.x,
        size.height * animation.rightHand.h13.y);
    rightBalm.lineTo(size.width * animation.rightHand.h9.x,
        size.height * animation.rightHand.h9.y);
    rightBalm.lineTo(size.width * animation.rightHand.h5.x,
        size.height * animation.rightHand.h5.y);
    rightBalm.lineTo(size.width * animation.rightHand.h1.x,
        size.height * animation.rightHand.h1.y);
    rightBalm.close();

    canvas.drawPath(rightBalm, darkSkin);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

