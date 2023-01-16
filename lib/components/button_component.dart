import 'package:flutter/cupertino.dart';

class ButtonComponent extends StatelessWidget {
  
  final Widget child;
  final void Function()? onPressed;
  final Color? color;
  const ButtonComponent({Key? key, required this.onPressed, required this.child, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.all(16.0),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        onPressed: onPressed, 
        color: color,
        child: child);
  }
}
