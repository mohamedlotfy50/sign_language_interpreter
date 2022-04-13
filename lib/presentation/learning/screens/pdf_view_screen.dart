import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/domain/learning/document_model.dart';

class PdfScreenViewer extends StatelessWidget {
  final DocumentModel doc;
  PdfScreenViewer({Key? key, required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doc.enTitle),
      ),
      body: PdfViewPinch(
        controller: PdfControllerPinch(
          document: PdfDocument.openAsset(doc.location),
        ),
      ),
    );
  }
}
