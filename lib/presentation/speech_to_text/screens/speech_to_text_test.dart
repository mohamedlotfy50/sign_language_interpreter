// import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_recognition_result.dart';
// import 'package:speech_to_text/speech_to_text.dart';

// class SpeechToTextTest extends StatefulWidget {
//   SpeechToTextTest({Key? key}) : super(key: key);

//   @override
//   _SpeechToTextTestState createState() => _SpeechToTextTestState();
// }

// class _SpeechToTextTestState extends State<SpeechToTextTest> {
//   SpeechToText _speechToText = SpeechToText();
//   bool _speechEnabled = false;
//   String _lastWords = '';

//   /// This has to happen only once per app
//   Future<void> _initSpeech() async {
//     _speechEnabled = await _speechToText.initialize(
//       onError: (error) => print('Error initializing speech: ${error.errorMsg}'),
//       onStatus: (status) => print('Status: $status'),
//       debugLogging: true,
//     );

//     setState(() {});
//   }

//   /// Each time to start a speech recognition session
//   Future<void> _startListening() async {
//     await _speechToText.listen(
//       onResult: (r) {
//         print('working');
//       },
//       cancelOnError: true,
//     );
//     setState(() {});
//   }

//   /// Manually stop the active speech recognition session
//   /// Note that there are also timeouts that each platform enforces
//   /// and the SpeechToText plugin supports setting timeouts on the
//   /// listen method.
//   Future<void> _stopListening() async {
//     await _speechToText.stop();
//     setState(() {});
//   }

//   /// This is the callback that the SpeechToText plugin calls when
//   /// the platform returns recognized words.
//   void _onSpeechResult(SpeechRecognitionResult result) {
//     print(result.toJson());
//     setState(() {
//       _lastWords = result.recognizedWords;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Speech Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(16),
//               child: Text(
//                 'Recognized words:',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(16),
//                 child: Text(
//                   // If listening is active show the recognized words
//                   _speechToText.isListening
//                       ? '$_lastWords'
//                       // If listening isn't active but could be tell the user
//                       // how to start it, otherwise indicate that speech
//                       // recognition is not yet ready or not supported on
//                       // the target device
//                       : _speechEnabled
//                           ? 'Tap the microphone to start listening...'
//                           : 'Speech not available',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed:
//             // If not yet listening for speech start, otherwise stop
//             () async {
//           await _initSpeech().then((value) async {
//             await _startListening();
//           });
//         },
//         tooltip: 'Listen',
//         child: Icon(_speechToText.isNotListening ? Icons.mic_off : Icons.mic),
//       ),
//     );
//   }
// }
