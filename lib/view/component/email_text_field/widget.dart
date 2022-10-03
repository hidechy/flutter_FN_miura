import 'package:flutter/material.dart';

import '../../style/colors.dart';

/// ログイン画面などで使用するメール入力フィールド
class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: IHSColors.inputColor,
        filled: true,
        hintText: 'example@test.jp',
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: IHSColors.textFieldColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: IHSColors.textFieldColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
