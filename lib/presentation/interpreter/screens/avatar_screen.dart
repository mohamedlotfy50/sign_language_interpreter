import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:sign_language_interpreter/presentation/interpreter/widgets/avatar.dart';
import '../../../application/avatar/avatar_provider.dart';
import '../widgets/controller_button.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ChangeNotifierProvider(
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
              GameWidget(game: MyAvatar()),
              watch.text.isNotEmpty
                  ? Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.black45),
                        child: Text(
                          watch.text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
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
                  height: 120,
                  color: Colors.black87,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          read.deleteRecored();
                        },
                        icon: const Icon(
                          Icons.delete,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                          onPressed: read.audiStateChanged,
                          icon: Icon(Icons.mic)),
                      IconButton(
                        icon: const Icon(Icons.text_fields,
                            size: 30, color: Colors.white),
                        onPressed: () async {
                          await read.test();
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