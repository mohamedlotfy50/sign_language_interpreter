import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sign_language_interpreter/application/main_screen/main_screen_provider.dart';
import 'package:sign_language_interpreter/domain/learning/document_model.dart';
import 'package:sign_language_interpreter/presentation/learning/screens/pdf_view_screen.dart';
import 'package:sign_language_interpreter/presentation/learning/widgets/book_tile.dart';

class BooksListScreen extends StatelessWidget {
  final List<DocumentModel> documents;
  const BooksListScreen({
    Key? key,
    required this.documents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resources',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        itemCount: documents.length,
        itemBuilder: (context, index) {
          return BookTile(
            title: documents[index].enTitle,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PdfScreenViewer(doc: documents[index]),
                  ));
            },
          );
        },
      ),
    );
  }
}
