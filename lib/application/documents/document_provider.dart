import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/infrastructure/core/app_state.dart';
import 'package:sign_language_interpreter/infrastructure/document/document_service.dart';

import '../../domain/document/document_model.dart';

class DocumentProvider extends ChangeNotifier {
  final DocumentService _documentService = DocumentService();
  List<DocumentModel> docs = [];

  int _currentIndex = 0;
  AppState state = AppState.init;
  DocumentModel get currentDocument => docs[_currentIndex];
  Future<void> getDocuments() async {
    state = AppState.loading;
    notifyListeners();
    final List<DocumentModel>? documents = await _documentService.getDocList();
    if (documents != null) {
      docs = documents;
      state = AppState.loaded;
    } else {
      state = AppState.error;
    }
    notifyListeners();
  }

  Future<DocumentModel> loadDocument() async {
    if (!docs[_currentIndex].isLoaded) {
      final Uint8List bytes =
          await _documentService.getFile(docs[_currentIndex].url);
      docs[_currentIndex].setData(bytes);
    }
    return docs[_currentIndex];
  }

  void setCurrentDocument(int index) {
    _currentIndex = index;
  }
}
