import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
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
              // const Padding(
              //   padding: EdgeInsets.only(top: 50),
              //   child: riv.RiveAnimation.asset(
              //     'assets/animation/avatar.riv',
              //   ),
              // ),

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
                          read.test();
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
