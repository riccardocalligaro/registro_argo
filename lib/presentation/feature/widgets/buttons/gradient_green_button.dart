import 'package:flutter/material.dart';

class GradientGreenButton extends StatefulWidget {
  final Widget center;
  final double height;
  final double width;
  final GestureTapCallback onTap;

  GradientGreenButton({
    Key key,
    this.center,
    this.width,
    this.height,
    this.onTap,
  }) : super(key: key);

  @override
  _GradientGreenButtonState createState() => _GradientGreenButtonState();
}

class _GradientGreenButtonState extends State<GradientGreenButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: widget.onTap,
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      child: Container(
        width: widget.width ?? 220,
        height: widget.height ?? 43,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.6, 1],
            colors: <Color>[
              Color.fromRGBO(101, 184, 147, 1),
              Color.fromRGBO(186, 237, 136, 1)
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(80.0),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: widget.center ?? Container(),
      ),
    );
  }
}
