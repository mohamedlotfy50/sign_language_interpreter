import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AvatarAnimation {
  int _currentFrame = 0;
  List<FrameAnimation>? frames;
  AvatarAnimation({this.frames});

  Future<void> fromFile(String fileName) async {
    final String response = await rootBundle.loadString(fileName);
    final Map<String, dynamic> data = await json.decode(response);
    frames = FrameAnimation.fromJsonList(data['frames']);
  }

  factory AvatarAnimation.fromJson(List jsonList) {
    return AvatarAnimation(
      frames: FrameAnimation.fromJsonList(jsonList),
    );
  }

  bool get isEnded {
    if (frames == null) {
      return false;
    } else {
      return frames!.length == _currentFrame + 1;
    }
  }

  FrameAnimation currentAnimation() {
    if (frames != null) {
      if (frames!.isNotEmpty) {
        if (_currentFrame == 0) {
          return frames![_currentFrame];
        }
        if (frames![_currentFrame].face.isZero() &&
            !frames![_currentFrame - 1].face.isZero()) {
          frames![_currentFrame]
              .setNewValue(face: frames![_currentFrame - 1].face);
        }
        if (frames![_currentFrame].leftArm.isZero() &&
            !frames![_currentFrame - 1].leftArm.isZero()) {
          frames![_currentFrame]
              .setNewValue(leftArm: frames![_currentFrame - 1].leftArm);
        }
        if (frames![_currentFrame].rightArm.isZero() &&
            !frames![_currentFrame - 1].rightArm.isZero()) {
          frames![_currentFrame]
              .setNewValue(rightArm: frames![_currentFrame - 1].rightArm);
        }
        if (frames![_currentFrame].leftHand.isZero() &&
            !frames![_currentFrame - 1].leftHand.isZero()) {
          frames![_currentFrame]
              .setNewValue(leftHand: frames![_currentFrame - 1].leftHand);
        }
        if (frames![_currentFrame].rightHand.isZero() &&
            !frames![_currentFrame - 1].rightHand.isZero()) {
          frames![_currentFrame]
              .setNewValue(rightHand: frames![_currentFrame - 1].rightHand);
        }
        if (frames![_currentFrame].leftLeg.isZero() &&
            !frames![_currentFrame - 1].leftLeg.isZero()) {
          frames![_currentFrame]
              .setNewValue(leftLeg: frames![_currentFrame - 1].leftLeg);
        }
        if (frames![_currentFrame].rightLeg.isZero() &&
            !frames![_currentFrame - 1].rightLeg.isZero()) {
          frames![_currentFrame]
              .setNewValue(rightLeg: frames![_currentFrame - 1].rightLeg);
        }
        return frames![_currentFrame];
      } else {
        return FrameAnimation.idl();
      }
    } else {
      return FrameAnimation.idl();
    }
  }

  void nextFrame() {
    print(_currentFrame);
    if (!isEnded) {
      _currentFrame += 1;
    }
  }

  void reset() {
    _currentFrame = 0;
  }
}

class Hand {
  final Coordinate h0,
      h1,
      h2,
      h3,
      h4,
      h5,
      h6,
      h7,
      h8,
      h9,
      h10,
      h11,
      h12,
      h13,
      h14,
      h15,
      h16,
      h17,
      h18,
      h19,
      h20;

  const Hand({
    required this.h0,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.h7,
    required this.h8,
    required this.h9,
    required this.h10,
    required this.h11,
    required this.h12,
    required this.h13,
    required this.h14,
    required this.h15,
    required this.h16,
    required this.h17,
    required this.h18,
    required this.h19,
    required this.h20,
  });

  bool isZero() =>
      h0.isZero() &&
      h1.isZero() &&
      h2.isZero() &&
      h3.isZero() &&
      h4.isZero() &&
      h5.isZero() &&
      h6.isZero() &&
      h7.isZero() &&
      h8.isZero() &&
      h9.isZero() &&
      h10.isZero() &&
      h11.isZero() &&
      h12.isZero() &&
      h13.isZero() &&
      h14.isZero() &&
      h15.isZero() &&
      h16.isZero() &&
      h17.isZero() &&
      h18.isZero() &&
      h19.isZero() &&
      h20.isZero();
}

class Face {
  final Coordinate f0,
      f1,
      f2,
      f3,
      le0,
      le1,
      le2,
      le3,
      re0,
      re1,
      re2,
      re3,
      m0,
      m1,
      m2,
      m3,
      m4,
      m5;

  const Face({
    required this.f0,
    required this.f1,
    required this.f2,
    required this.f3,
    required this.le0,
    required this.le1,
    required this.le2,
    required this.le3,
    required this.re0,
    required this.re1,
    required this.re2,
    required this.re3,
    required this.m0,
    required this.m1,
    required this.m2,
    required this.m3,
    required this.m4,
    required this.m5,
  });
  bool isZero() =>
      (f0.isZero() && f1.isZero() && f2.isZero() && f3.isZero()) ||
      (le0.isZero() && le1.isZero() && le2.isZero() && le3.isZero()) ||
      (re0.isZero() && re1.isZero() && re2.isZero() && re3.isZero()) ||
      (m0.isZero() &&
          m1.isZero() &&
          m2.isZero() &&
          m3.isZero() &&
          m4.isZero() &&
          m5.isZero());
}

class Arm {
  final Coordinate a0, a1, a2;

  const Arm({
    required this.a0,
    required this.a1,
    required this.a2,
  });
  bool isZero() => a0.isZero() && a1.isZero() && a2.isZero();
}

class Leg {
  final Coordinate l0, l1, l2, l3, l4;

  const Leg({
    required this.l0,
    required this.l1,
    required this.l2,
    required this.l3,
    required this.l4,
  });
  bool isZero() =>
      l0.isZero() && l1.isZero() && l2.isZero() && l3.isZero() && l4.isZero();
}

class Coordinate {
  late num x, y;
  Coordinate({num? x, num? y}) {
    this.x = x ?? 0;
    this.y = y ?? 0;
  }

  bool isZero() {
    return x == 0 && y == 0;
  }
}

class FrameAnimation {
  Face face;
  Hand leftHand, rightHand;
  Leg leftLeg, rightLeg;
  Arm leftArm, rightArm;

  FrameAnimation({
    required this.face,
    required this.leftHand,
    required this.rightHand,
    required this.leftLeg,
    required this.rightLeg,
    required this.leftArm,
    required this.rightArm,
  });
  factory FrameAnimation.idl() {
    return FrameAnimation(
      face: Face(
        f0: Coordinate(x: 0.5562, y: 0.24),
        f1: Coordinate(x: 0.6141, y: 0.2815),
        f2: Coordinate(x: 0.5604, y: 0.3152),
        f3: Coordinate(x: 0.5014, y: 0.284),
        le0: Coordinate(x: 0.5593, y: 0.2925),
        le1: Coordinate(x: 0.5593, y: 0.2925),
        le2: Coordinate(x: 0.5593, y: 0.2925),
        le3: Coordinate(x: 0.5593, y: 0.2925),
        re0: Coordinate(x: 0.5593, y: 0.2925),
        re1: Coordinate(x: 0.5593, y: 0.2925),
        re2: Coordinate(x: 0.5593, y: 0.2925),
        re3: Coordinate(x: 0.5593, y: 0.2925),
        m0: Coordinate(x: 0.5593, y: 0.2925),
        m1: Coordinate(x: 0.5593, y: 0.2925),
        m2: Coordinate(x: 0.5593, y: 0.2925),
        m3: Coordinate(x: 0.5593, y: 0.2925),
        m4: Coordinate(x: 0.5593, y: 0.2925),
        m5: Coordinate(x: 0.5593, y: 0.2925),
      ),
      rightHand: Hand(
        h0: Coordinate(x: 0.7196, y: 0.5866),
        h1: Coordinate(x: 0.6965, y: 0.596),
        h2: Coordinate(x: 0.6862, y: 0.6097),
        h3: Coordinate(x: 0.681, y: 0.6219),
        h4: Coordinate(x: 0.6756, y: 0.6309),
        h5: Coordinate(x: 0.7141, y: 0.6228),
        h6: Coordinate(x: 0.7012, y: 0.6375),
        h7: Coordinate(x: 0.6893, y: 0.6405),
        h8: Coordinate(x: 0.6809, y: 0.641),
        h9: Coordinate(x: 0.7265, y: 0.6224),
        h10: Coordinate(x: 0.7117, y: 0.6377),
        h11: Coordinate(x: 0.6976, y: 0.6396),
        h12: Coordinate(x: 0.6877, y: 0.6385),
        h13: Coordinate(x: 0.733, y: 0.62),
        h14: Coordinate(x: 0.7202, y: 0.6335),
        h15: Coordinate(x: 0.7069, y: 0.6358),
        h16: Coordinate(x: 0.697, y: 0.6353),
        h17: Coordinate(x: 0.7351, y: 0.6171),
        h18: Coordinate(x: 0.7266, y: 0.6284),
        h19: Coordinate(x: 0.7164, y: 0.6316),
        h20: Coordinate(x: 0.7077, y: 0.6318),
      ),
      leftHand: Hand(
        h0: Coordinate(x: 0.3863, y: 0.5815),
        h1: Coordinate(x: 0.4096, y: 0.5904),
        h2: Coordinate(x: 0.4209, y: 0.6038),
        h3: Coordinate(x: 0.4266, y: 0.616),
        h4: Coordinate(x: 0.4315, y: 0.6245),
        h5: Coordinate(x: 0.3928, y: 0.6149),
        h6: Coordinate(x: 0.4055, y: 0.6302),
        h7: Coordinate(x: 0.4164, y: 0.6338),
        h8: Coordinate(x: 0.4245, y: 0.635),
        h9: Coordinate(x: 0.3811, y: 0.6152),
        h10: Coordinate(x: 0.3964, y: 0.6301),
        h11: Coordinate(x: 0.4093, y: 0.633),
        h12: Coordinate(x: 0.4186, y: 0.6328),
        h13: Coordinate(x: 0.3759, y: 0.6138),
        h14: Coordinate(x: 0.39, y: 0.6267),
        h15: Coordinate(x: 0.4022, y: 0.6295),
        h16: Coordinate(x: 0.411, y: 0.6295),
        h17: Coordinate(x: 0.3752, y: 0.6121),
        h18: Coordinate(x: 0.3851, y: 0.6225),
        h19: Coordinate(x: 0.3951, y: 0.6259),
        h20: Coordinate(x: 0.4031, y: 0.6263),
      ),
      leftLeg: Leg(
        l0: Coordinate(x: 0.4932, y: 0.5713),
        l1: Coordinate(x: 0.4902, y: 0.72),
        l2: Coordinate(x: 0.474, y: 0.8457),
        l3: Coordinate(x: 0.4868, y: 0.8598),
        l4: Coordinate(x: 0.4514, y: 0.9057),
      ),
      rightLeg: Leg(
        l0: Coordinate(x: 0.6248, y: 0.5719),
        l1: Coordinate(x: 0.6168, y: 0.7221),
        l2: Coordinate(x: 0.6167, y: 0.8407),
        l3: Coordinate(x: 0.5988, y: 0.8551),
        l4: Coordinate(x: 0.6493, y: 0.898),
      ),
      rightArm: Arm(
        a0: Coordinate(x: 0.6903, y: 0.37),
        a1: Coordinate(x: 0.7193, y: 0.4841),
        a2: Coordinate(x: 0.7182, y: 0.5866),
      ),
      leftArm: Arm(
        a0: Coordinate(x: 0.4426, y: 0.3689),
        a1: Coordinate(x: 0.3973, y: 0.4829),
        a2: Coordinate(x: 0.3916, y: 0.5812),
      ),
    );
  }
  factory FrameAnimation.fromJson(Map<String, dynamic> json) {
    return FrameAnimation(
      face: Face(
          f0: Coordinate(x: json['f10']?['x'], y: json['f10']?['y']),
          f1: Coordinate(x: json['f323']?['x'], y: json['f323']?['y']),
          f2: Coordinate(x: json['f175']?['x'], y: json['f175']?['y']),
          f3: Coordinate(x: json['f93']?['x'], y: json['f93']?['y']),
          le0: Coordinate(),
          le1: Coordinate(),
          le2: Coordinate(),
          le3: Coordinate(),
          re0: Coordinate(),
          re1: Coordinate(),
          re2: Coordinate(),
          re3: Coordinate(),
          m0: Coordinate(),
          m1: Coordinate(),
          m2: Coordinate(),
          m3: Coordinate(),
          m4: Coordinate(),
          m5: Coordinate()),
      rightHand: Hand(
        h0: Coordinate(x: json['lh0']?['x'], y: json['lh0']?['y']),
        h1: Coordinate(x: json['lh1']?['x'], y: json['lh1']?['y']),
        h2: Coordinate(x: json['lh2']?['x'], y: json['lh2']?['y']),
        h3: Coordinate(x: json['lh3']?['x'], y: json['lh3']?['y']),
        h4: Coordinate(x: json['lh4']?['x'], y: json['lh4']?['y']),
        h5: Coordinate(x: json['lh5']?['x'], y: json['lh5']?['y']),
        h6: Coordinate(x: json['lh6']?['x'], y: json['lh6']?['y']),
        h7: Coordinate(x: json['lh7']?['x'], y: json['lh7']?['y']),
        h8: Coordinate(x: json['lh8']?['x'], y: json['lh8']?['y']),
        h9: Coordinate(x: json['lh9']?['x'], y: json['lh9']?['y']),
        h10: Coordinate(x: json['lh10']?['x'], y: json['lh10']?['y']),
        h11: Coordinate(x: json['lh11']?['x'], y: json['lh11']?['y']),
        h12: Coordinate(x: json['lh12']?['x'], y: json['lh12']?['y']),
        h13: Coordinate(x: json['lh13']?['x'], y: json['lh13']?['y']),
        h14: Coordinate(x: json['lh14']?['x'], y: json['lh14']?['y']),
        h15: Coordinate(x: json['lh15']?['x'], y: json['lh15']?['y']),
        h16: Coordinate(x: json['lh16']?['x'], y: json['lh16']?['y']),
        h17: Coordinate(x: json['lh17']?['x'], y: json['lh17']?['y']),
        h18: Coordinate(x: json['lh18']?['x'], y: json['lh18']?['y']),
        h19: Coordinate(x: json['lh19']?['x'], y: json['lh19']?['y']),
        h20: Coordinate(x: json['lh20']?['x'], y: json['lh12']?['y']),
      ),
      leftHand: Hand(
        h0: Coordinate(x: json['rh0']?['x'], y: json['rh0']?['y']),
        h1: Coordinate(x: json['rh1']?['x'], y: json['rh1']?['y']),
        h2: Coordinate(x: json['rh2']?['x'], y: json['rh2']?['y']),
        h3: Coordinate(x: json['rh3']?['x'], y: json['rh3']?['y']),
        h4: Coordinate(x: json['rh4']?['x'], y: json['rh4']?['y']),
        h5: Coordinate(x: json['rh5']?['x'], y: json['rh5']?['y']),
        h6: Coordinate(x: json['rh6']?['x'], y: json['rh6']?['y']),
        h7: Coordinate(x: json['rh7']?['x'], y: json['rh7']?['y']),
        h8: Coordinate(x: json['rh8']?['x'], y: json['rh8']?['y']),
        h9: Coordinate(x: json['rh9']?['x'], y: json['rh9']?['y']),
        h10: Coordinate(x: json['rh10']?['x'], y: json['rh10']?['y']),
        h11: Coordinate(x: json['rh11']?['x'], y: json['rh11']?['y']),
        h12: Coordinate(x: json['rh12']?['x'], y: json['rh12']?['y']),
        h13: Coordinate(x: json['rh13']?['x'], y: json['rh13']?['y']),
        h14: Coordinate(x: json['rh14']?['x'], y: json['rh14']?['y']),
        h15: Coordinate(x: json['rh15']?['x'], y: json['rh15']?['y']),
        h16: Coordinate(x: json['rh16']?['x'], y: json['rh16']?['y']),
        h17: Coordinate(x: json['rh17']?['x'], y: json['rh17']?['y']),
        h18: Coordinate(x: json['rh18']?['x'], y: json['rh18']?['y']),
        h19: Coordinate(x: json['rh19']?['x'], y: json['rh19']?['y']),
        h20: Coordinate(x: json['rh20']?['x'], y: json['rh12']?['y']),
      ),
      rightLeg: Leg(
        l0: Coordinate(x: json['b23']?['x'], y: json['b23']?['y']),
        l1: Coordinate(x: json['b25']?['x'], y: json['b25']?['y']),
        l2: Coordinate(x: json['b27']?['x'], y: json['b27']?['y']),
        l3: Coordinate(x: json['b29']?['x'], y: json['b29']?['y']),
        l4: Coordinate(x: json['b31']?['x'], y: json['b31']?['y']),
      ),
      leftLeg: Leg(
        l0: Coordinate(x: json['b24']?['x'], y: json['b24']?['y']),
        l1: Coordinate(x: json['b26']?['x'], y: json['b26']?['y']),
        l2: Coordinate(x: json['b28']?['x'], y: json['b28']?['y']),
        l3: Coordinate(x: json['b30']?['x'], y: json['b30']?['y']),
        l4: Coordinate(x: json['b32']?['x'], y: json['b32']?['y']),
      ),
      rightArm: Arm(
        a0: Coordinate(x: json['b11']?['x'], y: json['b11']?['y']),
        a1: Coordinate(x: json['b13']?['x'], y: json['b13']?['y']),
        a2: Coordinate(x: json['b15']?['x'], y: json['b15']?['y']),
      ),
      leftArm: Arm(
        a0: Coordinate(x: json['b12']?['x'], y: json['b12']?['y']),
        a1: Coordinate(x: json['b14']?['x'], y: json['b14']?['y']),
        a2: Coordinate(x: json['b16']?['x'], y: json['b16']?['y']),
      ),
    );
  }

  void setNewValue({
    Face? face,
    Hand? leftHand,
    Hand? rightHand,
    Leg? leftLeg,
    Leg? rightLeg,
    Arm? leftArm,
    Arm? rightArm,
  }) {
    this.rightHand = rightHand ?? this.rightHand;
    this.leftHand = leftHand ?? this.leftHand;
    this.rightLeg = rightLeg ?? this.rightLeg;
    this.leftLeg = leftLeg ?? this.leftLeg;
    this.leftArm = leftArm ?? this.leftArm;
    this.rightArm = rightArm ?? this.rightArm;
    this.face = face ?? this.face;
  }

  static List<FrameAnimation> fromJsonList(List jsonList) {
    List<FrameAnimation> out = [];
    for (Map<String, dynamic> json in jsonList) {
      out.add(FrameAnimation.fromJson(json));
    }
    return out;
  }
}