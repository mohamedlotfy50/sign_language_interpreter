import 'dart:io';
import 'dart:convert';
import '../../domain/interpreter/interpreter.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../core/endpoints.dart';

class SignInterpreter {
  static Future<InterpreterModel?> translateText(String text) async {
    try {
      http.Response response =
          await http.post(Uri.parse(Endpoints.text), body: {
        'text': text,
      });
      if (response.statusCode == 200) {
        return InterpreterModel.fromJson(
            json.decode(utf8.decode(response.body.codeUnits)));
      } else {
        return null;
      }
    } on SocketException catch (_) {
      return null;
    }
  }

  static Future<InterpreterModel?> translateUrl(String text) async {
    try {
      http.Response response =
          await http.post(Uri.parse(Endpoints.translateUrl), body: {
        'url': text,
      });
      if (response.statusCode == 200) {
        return InterpreterModel.fromJson(
            json.decode(utf8.decode(response.body.codeUnits)));
      } else {
        return null;
      }
    } on SocketException catch (_) {
      return null;
    }
  }

  static Future<InterpreterModel?> translateAudio(File audio) async {
    try {
      final http.MultipartRequest request =
          http.MultipartRequest("POST", Uri.parse(Endpoints.voice));
      request.files.add(await http.MultipartFile.fromPath(
        'audio',
        audio.path,
        contentType: MediaType('audio', 'x-wav'),
      ));

      final http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        final String body = await response.stream.bytesToString();
        return InterpreterModel.fromJson(json.decode(body));
      } else {
        return null;
      }
    } on SocketException catch (_) {
      return null;
    }
  }
}
