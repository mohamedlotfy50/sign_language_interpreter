import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/domain/learning/document_model.dart';

class PdfScreenViewer extends StatelessWidget {
  late final PdfController pdfController;
  final DocumentModel doc;
  PdfScreenViewer({Key? key, required this.doc}) : super(key: key) {
    pdfController = PdfController(
      document: PdfDocument.openAsset(doc.location),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doc.enTitle),
      ),
      body: PdfView(
        controller: pdfController,
      ),
    );
  }
}
