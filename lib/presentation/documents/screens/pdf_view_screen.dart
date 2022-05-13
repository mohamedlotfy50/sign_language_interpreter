import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/application/documents/document_provider.dart';

import '../../../domain/document/document_model.dart';

class PdfScreenViewer extends StatelessWidget {
  const PdfScreenViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DocumentProvider provider = Provider.of<DocumentProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(provider.currentDocument.name),
      ),
      body: FutureBuilder<DocumentModel>(
        future: provider.loadDocument(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return PdfViewPinch(
            controller: PdfControllerPinch(
                document: PdfDocument.openData(provider.currentDocument.data)),
            onDocumentError: (_) {},
          );
        },
      ),
    );
  }
}
