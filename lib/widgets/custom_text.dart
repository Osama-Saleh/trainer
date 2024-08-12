import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  const CustomText({
    super.key,
    this.text,
    this.style
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: TextOverflow.ellipsis,
      style:style?? TextStyle(
        fontSize: 16,
        color: Colors.black,

      ),
    );
  }
}
