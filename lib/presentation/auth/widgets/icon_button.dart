import 'package:flutter/material.dart';

class ThirdPartyButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final void Function()? onPressed;
  const ThirdPartyButton(
      {Key? key,
      required this.color,
      required this.icon,
      required this.text,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    offset: Offset(3, 3),
                    color: Colors.black26,
                    spreadRadius: 3,
                    blurRadius: 5)
              ]),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 60,
                height: 55,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.white, width: 1))),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Text(
                text,
                style: theme.textTheme.bodyText1!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          )),
    );
  }
}
