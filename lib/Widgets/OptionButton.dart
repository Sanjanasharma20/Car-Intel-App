import 'package:flutter/material.dart';

import '../Constants.dart';

class OptionButton extends StatefulWidget {
  final String text;
  final double width;
  final Function onPressed;
  final int state;

  OptionButton.named({this.text, this.width, this.onPressed, this.state});
  OptionButton(this.text, this.width, this.onPressed, this.state);

  @override
  _OptionButtonState createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  // final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      onPressed: widget.onPressed,
      color: getColor(widget.state),
      child: Container(
        width: widget.width,
        height: 50,
        child: Row(
          children: [
            Spacer(),
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 22,
                  color: (widget.state != 2) ? Colors.white : Colors.black),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Color getColor(int state) {
    if (state == 0) {
      return Constants.togglePositiveColor;
    } else if (state == 1) {
      return Constants.toggleNegativeColor;
    }
    return Constants.toggleDeactivatedColor;
  }
}
