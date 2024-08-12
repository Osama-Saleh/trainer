import 'package:flutter/material.dart';
import 'package:train/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final void Function()? onPressed;
  const CustomElevatedButton({super.key,required this.text,this.backgroundColor,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor:backgroundColor?? Color.fromARGB(255, 2, 72, 193)),
        child: CustomText(
          text: text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}
