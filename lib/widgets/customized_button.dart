import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final Color borderColor;
  final VoidCallback? onPressed;

  const CustomizedButton({
    Key? key,
    this.buttonText,
    this.buttonColor,
    this.textColor,
    required this.borderColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 56,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(
              width: 1,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text(
              buttonText!,
              style: TextStyle(
                color: textColor,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
