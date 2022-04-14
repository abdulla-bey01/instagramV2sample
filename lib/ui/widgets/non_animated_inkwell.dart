import 'package:flutter/material.dart';

class NonAnimatedInkWell extends StatelessWidget {
  const NonAnimatedInkWell({Key? key, required this.onTap, required this.child})
      : super(key: key);
  final void Function()? onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: child,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
