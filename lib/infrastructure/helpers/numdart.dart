import 'dart:math' as math;

import 'package:flutter/cupertino.dart';

@immutable
class NumDart {
  static List<double> linspace(double start, double stop, int delta) {
    double incrementCount = (stop - start) / delta;
    List<double> base = List<double>.generate(
        delta + 1, (index) => start.toDouble() + index * incrementCount);

    return base;
  }

  static List<double> exp(List list) {
    return List.generate(list.length, (index) => list[index] * math.e);
  }

  static List<num> sin(List<num> list) {
    return List<num>.generate(list.length, (index) => math.sin(list[index]));
  }

  static List<int> arrange(int start, int stop, int step) {
    int length = ((stop - start) / step).round();
    return List<int>.generate(length, (index) => start + index * step);
  }

  static num sum(List<num> list) {
    num sum = 0;

    for (int i = 0; i < list.length; i++) {
      sum += list[i];
    }
    return sum;
  }

  static List<num> abs(List<num> list) {
    return List<num>.generate(list.length, (index) {
      if (list[index] < 0) {
        num delta = 0 - list[index];
        return delta;
      } else {
        return list[index];
      }
    });
  }

  static List<num> log10(List<num> list) {
    return List<num>.generate(
        list.length, (index) => math.log(list[index]) / math.ln10);
  }
}

extension MathOperators on List {
  List<num> multiplyNum(num number) {
    return List<num>.generate(length, (index) => this[index] * number);
  }

  List<num> multiplyList(List<num> list) {
    List<num> result = [];
    List<num> operationList;
    int listLength = list.length;
    if (length > listLength) {
      operationList = this as List<num>;
    } else {
      operationList = list;
    }
    for (int i = 0; i < operationList.length; i++) {
      num first = i > listLength - 1 ? 1 : list[i];
      num second = i > length - 1 ? 1 : this[i];
      result.add(first * second);
    }
    return result;
  }
}
