import 'dart:async';

class PauseableTimer {
  final Duration duration;
  final void Function() onDone;
  final t = const Duration(seconds: 1);
  Timer? _timer;
  int second = 0;

  PauseableTimer(this.duration, this.onDone);

  void start() {
    second = 0;
    _timer = Timer.periodic(
      t,
      (timer) {
        if (second >= duration.inSeconds) {
          print('done');
          onDone();
          timer.cancel();
        } else {
          second += 1;
        }
      },
    );
  }

  void pause() {
    if (_timer != null) {
      _timer!.cancel();
      print(second);
    }
  }

  void resume() {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer.periodic(
      t,
      (timer) {
        if (second >= duration.inSeconds) {
          print('done');

          onDone();
          timer.cancel();
        } else {
          second += 1;
        }
      },
    );
  }
}
