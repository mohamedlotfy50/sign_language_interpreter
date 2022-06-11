import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:internet_file/internet_file.dart';
import '../../domain/document/document_model.dart';
import '../core/endpoints.dart';

class DocumentService {
  Future<List<DocumentModel>?> getDocList() async {
    try {
      final List<DocumentModel> documents = [];

      http.Response response = await http.get(Uri.parse(Endpoints.docs));
      if (response.statusCode == 200) {
        List list = json.decode(response.body);

        for (String url in list) {
          documents.add(DocumentModel(url));
        }

        return documents;
      }
      return null;
    } on SocketException catch (_) {
      return null;
    }
  }

  Future<Uint8List> getFile(String url) async {
    return await InternetFile.get(
      Endpoints.staticDir + url,
      process: (percentage) {
        print('downloadPercentage: $percentage');
      },
    );
  }
}
