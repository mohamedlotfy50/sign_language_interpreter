import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../application/avatar/avatar_provider.dart';
import '../../../infrastructure/avatar/audio_state.dart';
import '../../../infrastructure/core/app_state.dart';

class ControllButton extends StatefulWidget {
  ControllButton({Key? key}) : super(key: key);

  @override
  State<ControllButton> createState() => _ControllButtonState();
}

class _ControllButtonState extends State<ControllButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _shadowAnimation;
  late Animation<Color?> _colorAnimation;

  IconData getIcon(RecorderState recoder, PlayerState player) {
    if (recoder == RecorderState.recorderInitialized) {
      return Icons.mic;
    } else if (recoder == RecorderState.recording) {
      return Icons.stop;
    } else if (recoder == RecorderState.recorded &&
        player == PlayerState.playerInitialized) {
      return Icons.play_arrow;
    } else if (recoder == RecorderState.recorded &&
        player == PlayerState.paused) {
      return Icons.play_arrow;
    } else if (recoder == RecorderState.recorded &&
        player == PlayerState.played) {
      return Icons.pause;
    }

    return Icons.warning;
  }

  bool isForward = true;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));

    _shadowAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
    _colorAnimation = ColorTween(begin: Colors.white, end: Color(0xFFE78EA9))
        .animate(_animationController);
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        _animationController.reverse();
      } else if (_animationController.isDismissed) {
        _animationController.forward();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AvatarProvider>(context, listen: true);
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return GestureDetector(
            onTap: () async {
              await provider.audiStateChanged().then((value) {
                if (provider.recorderState == RecorderState.recording) {
                  _animationController.forward();
                } else {
                  if (_animationController.status == AnimationStatus.forward) {
                    _animationController.reverse().then((value) {
                      _animationController.stop();
                    });
                  }
                }
              });
            },
            child: Container(
              width: 70,
              height: 70,
              child: provider.recorderState == RecorderState.recorderUnset ||
                      provider.playerState == PlayerState.playerUnset ||
                      provider.state == AppState.loading
                  ? const CircularProgressIndicator(
                      color: Color(0xFFE78EA9),
                    )
                  : Icon(
                      getIcon(provider.recorderState, provider.playerState),
                      color: _colorAnimation.value,
                    ),
              decoration: BoxDecoration(
                  color: Color(0xFF40DFEF),
                  shape: BoxShape.circle,
                  boxShadow: provider.recorderState == RecorderState.recording
                      ? <BoxShadow>[
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              offset: const Offset(0, 0),
                              color: _colorAnimation.value!.withAlpha(100),
                              blurRadius: 6,
                              spreadRadius: 15 * _shadowAnimation.value),
                        ]
                      : null),
            ),
          );
        });
  }
}
