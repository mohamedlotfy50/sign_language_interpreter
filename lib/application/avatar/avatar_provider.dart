import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mic_stream/mic_stream.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sign_language_interpreter/infrastructure/helpers/permission_handler.dart';
import 'package:soundpool/soundpool.dart';

import '../../domain/interpreter/interpreter.dart';
import '../../infrastructure/audio/audio_service.dart';
import '../../infrastructure/avatar/audio_state.dart';
import '../../infrastructure/avatar/sign_interpreter.dart';

class AvatarProvider extends ChangeNotifier {
  final AudioService _audioService = AudioService();
  RecorderState recorderState = RecorderState.recorderUnset;
  PlayerState playerState = PlayerState.playerUnset;
  final PermissionChecker _permissionChecker = PermissionChecker();
  AvatarProvider() {
    _initRecorder().then((value) {
      _initPlayer();
    });
    notifyListeners();
  }
  void audiStateChanged() {
    if (playerState == PlayerState.playerUnset) {
      _initPlayer();
    }
    if (recorderState == RecorderState.recorderUnset) {
      _initRecorder();
    } else if (recorderState == RecorderState.recorderInitialized) {
      _record();
    } else if (recorderState == RecorderState.recording) {
      _stopRecorder();
    } else if (recorderState == RecorderState.recorded) {
      _play();
    } else if (playerState == PlayerState.played) {
      _pause();
    } else if (playerState == PlayerState.paused) {
      _resume();
    }
    notifyListeners();
  }

  void _record() {
    _audioService.record().then((value) {
      recorderState = RecorderState.recording;
    });
    print('recording');
  }

  void _stopRecorder() async {
    _audioService.stopRecorder().then((value) {
      recorderState = RecorderState.recorded;
    });
    print('stop recording');
  }

  void _play() async {
    _audioService.play().then((value) {
      playerState = PlayerState.played;
    });
    print('play');
  }

  void _pause() async {
    _audioService.pause().then((value) {
      playerState = PlayerState.paused;
    });
    print('paused');
  }

  void _resume() async {
    _audioService.resume().then((value) {
      playerState = PlayerState.played;
    });
    print('resume');
  }

  void deleteRecored() {
    _audioService.delete().then((value) {
      recorderState = RecorderState.recorderInitialized;
      playerState = PlayerState.playerInitialized;
      notifyListeners();
    });
    print('deleted');
  }

  Future<void> _initPlayer() async {
    _permissionChecker.storage().then((value) {
      if (value) {
        _audioService.initializeplayer();
        playerState = PlayerState.playerInitialized;
      }
    });
    print('storage permission');
  }

  Future<void> _initRecorder() async {
    _permissionChecker.microphone().then((value) {
      if (value) {
        _audioService.initializeRecord().then((value) {
          recorderState = RecorderState.recorderInitialized;
        });
      }
    });
    print('mic permission');
  }

  Future<String> test() async {
    InterpreterModel? i =
        await SignInterpreter.translateAudio(_audioService.audioFile);
    i!.printUser();
    return i.text;
  }
}
