import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/infrastructure/core/app_state.dart';
import 'package:sign_language_interpreter/presentation/documents/screens/pdf_view_screen.dart';
import 'package:sign_language_interpreter/presentation/documents/widgets/book_tile.dart';

import '../../../application/documents/document_provider.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Resources',
        ),
        centerTitle: true,
      ),
      body: ChangeNotifierProvider(
        create: (context) => DocumentProvider()..getDocuments(),
        builder: (context, child) {
          final DocumentProvider provider =
              Provider.of<DocumentProvider>(context);

          if (provider.state == AppState.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (provider.state == AppState.error) {
            return Center(
              child: Text('Error'),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            itemCount: provider.docs.length,
            itemBuilder: (context, index) {
              return BookTile(
                title: provider.docs[index].name,
                onPressed: () {
                  provider.setCurrentDocument(index);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangeNotifierProvider.value(
                        value: provider,
                        builder: (context, _) => const PdfScreenViewer(),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
