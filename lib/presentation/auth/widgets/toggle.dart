import 'package:flutter/material.dart';

class Swittch extends StatefulWidget {
  const Swittch({Key? key}) : super(key: key);

  @override
  _SwittchState createState() => _SwittchState();
}

class _SwittchState extends State<Swittch> {
  bool val = false;
  onSwitchValueChanged(bool newval){
    setState(() {
      val = newval;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Switch(
            activeColor: Colors.deepOrange,
              value: val,
              onChanged: (newval) {
                onSwitchValueChanged(newval);
              })
        ],
      )
    );
  }
}
