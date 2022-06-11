import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:mic_stream/mic_stream.dart';
import 'package:path_provider/path_provider.dart';
import '../../domain/audio/audio_facade.dart';
import 'package:soundpool/soundpool.dart';

class AudioService extends AudioFacade {
  late final Soundpool pool;
  late final Stream<List<int>>? _stream;
  late StreamSubscription<List<int>> _listener;
  final int sampleRate = 44100;
  final int channels = 1;
  List<int> audio = [];
  late File _file;
  int? _streamID;
  File get audioFile => _file;
  bool isplayerDone = false;

  @override
  void initializeplayer() {
    pool = Soundpool.fromOptions();
  }

  @override
  Future<void> initializeRecord() async {
    _stream = await MicStream.microphone(
      audioFormat: AudioFormat.ENCODING_PCM_16BIT,
      audioSource: AudioSource.MIC,
      channelConfig: ChannelConfig.CHANNEL_IN_MONO,
      sampleRate: sampleRate,
    );
  }

  @override
  Future<void> pause() async {
    await pool.pause(_streamID!);
  }

  @override
  Future<bool> play() async {
    _streamID = await pool.loadAndPlayUint8List(_file.readAsBytesSync());

    return true;
  }

  @override
  Future<void> record() async {
    Directory appDocDirectory = await getApplicationDocumentsDirectory();
    await Directory(appDocDirectory.path + '/' + 'recored')
        .create(recursive: true)
        .then((value) {
      _file = File(value.path + '/' + 'sound.wav');
    });
    _listener = _stream!.listen((samples) {
      audio.addAll(samples);
    });
  }

  @override
  Future<void> stopRecorder() async {
    await _listener.cancel();
    int byteRate = ((16 * sampleRate * channels) / 8).round();

    var size = audio.length;

    var fileSize = size + 36;

    Uint8List header = Uint8List.fromList([
      // "RIFF"
      82, 73, 70, 70,
      fileSize & 0xff,
      (fileSize >> 8) & 0xff,
      (fileSize >> 16) & 0xff,
      (fileSize >> 24) & 0xff,
      // WAVE
      87, 65, 86, 69,
      // fmt
      102, 109, 116, 32,
      // fmt chunk size 16
      16, 0, 0, 0,
      // Type of format
      1, 0,
      // One channel
      channels, 0,
      // Sample rate
      sampleRate & 0xff,
      (sampleRate >> 8) & 0xff,
      (sampleRate >> 16) & 0xff,
      (sampleRate >> 24) & 0xff,
      // Byte rate
      byteRate & 0xff,
      (byteRate >> 8) & 0xff,
      (byteRate >> 16) & 0xff,
      (byteRate >> 24) & 0xff,
      // Uhm
      ((16 * channels) / 8).round(), 0,
      // bitsize
      16, 0,
      // "data"
      100, 97, 116, 97,
      size & 0xff,
      (size >> 8) & 0xff,
      (size >> 16) & 0xff,
      (size >> 24) & 0xff,
      ...audio
    ]);
    _file.writeAsBytesSync(header, flush: true);
  }

  @override
  Future<void> resume() async {
    await pool.resume(_streamID!);
  }

  @override
  Future<void> delete() async {
    if (_streamID != null) {
      await pool.stop(_streamID!);
    }
    audio.clear();
  }

  Duration getAudioDuration() {
    final byets = _file.readAsBytesSync();
    final time = (byets.length / (sampleRate * channels * 2)).ceil();
    int hours = time ~/ 3600;
    int minuts = (time - hours) ~/ 60;
    int seconds = (time - minuts - hours);
    print('$hours:$minuts:$seconds');

    return Duration(hours: hours, minutes: minuts, seconds: seconds);
  }
}
