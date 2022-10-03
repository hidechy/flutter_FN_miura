import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

class IHSTextButton extends StatelessWidget {
  const IHSTextButton(
    this.text, {
    Key? key,
    this.align = TextAlign.center,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final TextAlign align;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: align,
          style: IHSTextStyle.small.copyWith(
            decoration: TextDecoration.underline,
            color: IHSColors.titleColor,
          ),
        ),
      ),
    );
  }
}
