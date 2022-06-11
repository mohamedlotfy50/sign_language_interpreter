import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mic_stream/mic_stream.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../domain/interpreter/avatar_animation.dart';
import '../../domain/interpreter/validator.dart';
import '../../infrastructure/audio/pauseable_timer.dart';
import '../../infrastructure/core/app_state.dart';
import '../../infrastructure/helpers/permission_handler.dart';
import '../../presentation/interpreter/widgets/translation_room.dart';
import 'package:soundpool/soundpool.dart';

import '../../domain/interpreter/interpreter.dart';
import '../../infrastructure/audio/audio_service.dart';
import '../../infrastructure/avatar/audio_state.dart';
import '../../infrastructure/avatar/sign_interpreter.dart';

class AvatarProvider extends ChangeNotifier {
  final AudioService _audioService = AudioService();
  RecorderState recorderState = RecorderState.recorderUnset;
  PlayerState playerState = PlayerState.playerUnset;
  AppState state = AppState.init;
  final PermissionChecker _permissionChecker = PermissionChecker();
  late PauseableTimer _timer;
  bool isLoading = false;
  bool hasAudio = false;
  bool fromText = false;
  String _translateText = '';
  InterpreterModel? _interpreterModel;
  Timer? _animationTimer;
  bool get hasDelete {
    if (hasAudio) {
      return true;
    } else if (!fromText) {
      return true;
    }
    return false;
  }

  bool get canSend => hasAudio || _translateText.length > 3;

  String get text => _interpreterModel?.text ?? '';
  AvatarProvider() {
    _initRecorder().then((value) {
      _initPlayer().then((value) {
        print('notify');
        notifyListeners();
      });
    });
  }

  Future<void> audiStateChanged() async {
    if (playerState == PlayerState.playerUnset) {
      await _initPlayer();
    }
    if (recorderState == RecorderState.recorderUnset) {
      await _initRecorder();
    } else if (recorderState == RecorderState.recorderInitialized) {
      await _record();
    } else if (recorderState == RecorderState.recording) {
      hasAudio = true;

      await _stopRecorder();
      _timer = PauseableTimer(_audioService.getAudioDuration(), () {
        playerState = PlayerState.playerInitialized;
        notifyListeners();
      });
      print(_audioService.getAudioDuration().inSeconds);
    } else if (recorderState == RecorderState.recorded &&
        playerState == PlayerState.playerInitialized) {
      _timer.start();

      await _play();
    } else if (playerState == PlayerState.played) {
      _timer.start();

      await _pause();
    } else if (playerState == PlayerState.paused) {
      _timer.resume();

      await _resume();
    }
    notifyListeners();
  }

  Future<void> _record() async {
    recorderState = RecorderState.recording;

    await _audioService.record();
    print('recording');
  }

  Future<void> _stopRecorder() async {
    recorderState = RecorderState.recorded;

    await _audioService.stopRecorder();
  }

  Future<void> _play() async {
    playerState = PlayerState.played;

    await _audioService.play();
    print('play');
  }

  Future<void> _pause() async {
    playerState = PlayerState.paused;

    await _audioService.pause();
    print('paused');
  }

  Future<void> _resume() async {
    playerState = PlayerState.played;

    await _audioService.resume();
    print('resume');
  }

  Future<void> deleteRecored() async {
    if (hasAudio) {
      recorderState = RecorderState.recorderInitialized;
      playerState = PlayerState.playerInitialized;
      _interpreterModel = null;
      hasAudio = false;
      if (_animationTimer != null) {
        _animationTimer!.cancel();
      }

      await _audioService.delete();

      print('deleted');
    } else if (fromText) {
      fromText = false;
      _translateText = '';
    }
    notifyListeners();
  }

  Future<void> _initPlayer() async {
    await _permissionChecker.storage().then((value) async {
      if (value) {
        _audioService.initializeplayer();
        playerState = PlayerState.playerInitialized;
      }
    });

    print('storage permission');
  }

  Future<void> _initRecorder() async {
    await _permissionChecker.microphone().then((value) async {
      if (value) {
        await _audioService.initializeRecord().then((value) {
          recorderState = RecorderState.recorderInitialized;
        });
      }
    });
    print('recoredr permission');
  }

  void onChanged(String val) {
    _translateText = val;
    notifyListeners();
  }

  Future<void> submitButton() async {
    if (canSend) {
      state = AppState.loading;
      notifyListeners();
      if (hasAudio) {
        _interpreterModel =
            await SignInterpreter.translateAudio(_audioService.audioFile);
        if (_interpreterModel == null) {
          state = AppState.error;
        } else {
          state = AppState.loaded;
        }
      } else {
        final bool isUrl = InterpreterValidator.isUrl(_translateText);
        if (isUrl) {
          _interpreterModel =
              await SignInterpreter.translateUrl(_translateText);
        } else {
          _interpreterModel =
              await SignInterpreter.translateText(_translateText);
        }
        if (_interpreterModel == null) {
          state = AppState.error;
        } else {
          state = AppState.loaded;
        }
      }
      if (state == AppState.loaded) {
        createAnimation();
      }
    } else {
      fromText = true;
    }
    notifyListeners();
  }

  currentAnimation() {
    if (_interpreterModel != null) {
      return _interpreterModel!.translation.currentAnimation();
    }
    return FrameAnimation.idl();
  }

  void createAnimation() {
    _animationTimer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (_interpreterModel!.translation.isEnded) {
        _interpreterModel!.translation.reset();
        _animationTimer!.cancel();
        notifyListeners();
      } else {
        _interpreterModel!.translation.nextFrame();
        notifyListeners();
      }
    });
  }
}
