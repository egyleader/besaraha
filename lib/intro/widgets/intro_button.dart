import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? color;

  const IntroButton({Key? key, this.onPressed, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0,vertical: 12.0),
          child: Text(text , style: Theme.of(context).textTheme.button),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0) ),
        color: Theme.of(context).primaryColor,
        onPressed: onPressed);
        
  }
}
