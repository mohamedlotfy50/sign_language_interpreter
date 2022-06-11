import 'package:flutter/material.dart';
import 'presentation/interpreter/widgets/translation_room.dart';
import 'my_app.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
