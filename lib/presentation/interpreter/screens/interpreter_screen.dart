import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:sign_language_interpreter/presentation/interpreter/widgets/avatar_painter.dart';
import '../../../infrastructure/avatar/audio_state.dart';
import '../widgets/point_drive_drawing.dart';
import '../widgets/translation_room.dart';
import '../../../application/avatar/avatar_provider.dart';
import '../widgets/controller_button.dart';

class InterpreterScreen extends StatelessWidget {
  const InterpreterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ChangeNotifierProvider(
      lazy: false,
      create: (_) => AvatarProvider(),
      builder: (context, child) {
        final watch = context.watch<AvatarProvider>();
        final read = context.read<AvatarProvider>();

        return Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [Colors.yellow[400]!, Colors.orange[200]!],
                center: const Alignment(0, -0.5)),
          ),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {},
                child: Transform.translate(
                  offset: Offset(size.width / 4, 0),
                  child: SizedBox(
                    width: size.width / 2,
                    height: size.height,
                    child: CustomPaint(
                      isComplex: true,
                      willChange: true,
                      // painter: TestingPainter(),
                      painter: AvatarPainter(
                        animation: watch.currentAnimation(),
                      ),
                    ),
                  ),
                ),
              ),
              watch.text.isNotEmpty
                  ? Positioned(
                      bottom: 150,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(color: Colors.black45),
                        child: Text(
                          watch.text,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 120,
                  color: Colors.black87,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          read.deleteRecored();
                        },
                        icon: Icon(
                          watch.hasDelete
                              ? Icons.delete
                              : Icons.record_voice_over,
                          size: 30,
                          color: watch.hasAudio ? Colors.red : Colors.white,
                        ),
                      ),
                      watch.fromText
                          ? Expanded(
                              child: TextField(
                              onChanged: watch.onChanged,
                              style: const TextStyle(color: Colors.white),
                            ))
                          : ControllButton(),
                      IconButton(
                        icon: Icon(
                            watch.hasAudio || watch.fromText
                                ? Icons.send
                                : Icons.text_fields,
                            size: 30,
                            color: watch.canSend ? Colors.blue : Colors.white),
                        onPressed: () async {
                          await read.submitButton();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
