import 'dart:typed_data';

class DocumentModel {
  final String url;
  Uint8List? _data;

  DocumentModel(this.url);
  String get name => url.split('.').first;
  Uint8List get data => _data!;
  bool get isLoaded => _data != null;

  void setData(Uint8List data) {
    _data = data;
  }
}
