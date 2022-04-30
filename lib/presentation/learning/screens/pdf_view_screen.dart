import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/domain/learning/document_model.dart';
import 'package:sign_language_interpreter/infrastructure/core/endpoints.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreenViewer extends StatelessWidget {
  final DocumentModel doc;
  const PdfScreenViewer({Key? key, required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doc.enTitle),
      ),
      body: SfPdfViewer.network(
        Endpoints.staticDir + '${doc.location}.pdf',
      ),
    );
  }
}
