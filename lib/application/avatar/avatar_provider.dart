import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mic_stream/mic_stream.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sign_language_interpreter/domain/interpreter/core/words.dart';
import 'package:sign_language_interpreter/infrastructure/audio/pauseable_timer.dart';
import 'package:sign_language_interpreter/infrastructure/helpers/permission_handler.dart';
import 'package:sign_language_interpreter/presentation/interpreter/widgets/translation_room.dart';
import 'package:soundpool/soundpool.dart';

import '../../domain/interpreter/interpreter.dart';
import '../../infrastructure/audio/audio_service.dart';
import '../../infrastructure/avatar/audio_state.dart';
import '../../infrastructure/avatar/sign_interpreter.dart';

class AvatarProvider extends ChangeNotifier {
  final AudioService _audioService = AudioService();
  final TranslationRoom translationRoom = TranslationRoom();
  RecorderState recorderState = RecorderState.recorderUnset;
  PlayerState playerState = PlayerState.playerUnset;
  final PermissionChecker _permissionChecker = PermissionChecker();
  late PauseableTimer _timer;
  bool isLoading = false;
  bool hasAudio = false;
  bool fromText = false;
  String _translateText = '';

  bool get hasDelete {
    if (hasAudio) {
      return true;
    } else if (!fromText) {
      return true;
    }
    return false;
  }

  bool get canSend => hasAudio || _translateText.length > 3;

  String text = '';
  AvatarProvider() {
    _initRecorder().then((value) {
      _initPlayer().then((value) {
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
    //TODO: delete the audio and return to the init state or clear the text
    translationRoom.translateSigns([
      Signs.alhamdullah,
      Signs.sabahalkir,
      Signs.salamalikom,
      Signs.alhamdullah
    ]);
    // if (hasAudio) {
    //   recorderState = RecorderState.recorderInitialized;
    //   playerState = PlayerState.playerInitialized;
    //   text = '';
    //   hasAudio = false;

    //   await _audioService.delete();

    //   print('deleted');
    // } else if (fromText) {
    //   fromText = false;
    // }
    // notifyListeners();
  }

  Future<void> _initPlayer() async {
    await _permissionChecker.storage().then((value) {
      print(value);
      if (value) {
        _audioService.initializeplayer();
        playerState = PlayerState.playerInitialized;
      }
    });

    print('storage permission');
  }

  Future<void> _initRecorder() async {
    await _permissionChecker.microphone().then((value) {
      if (value) {
        _audioService.initializeRecord().then((value) {
          recorderState = RecorderState.recorderInitialized;
        });
      }
    });
  }

  void onChanged(String val) {
    _translateText = val;
    notifyListeners();
  }

  Future<void> submitButton() async {
    //TODO: delete the audio and return to the init state and cancel ticker
    if (hasAudio) {
    } else {
      fromText = true;
    }
    notifyListeners();
    // InterpreterModel? i =
    //     await SignInterpreter.translateAudio(_audioService.audioFile);

    // text = i!.text;
    // notifyListeners();
  }
}
