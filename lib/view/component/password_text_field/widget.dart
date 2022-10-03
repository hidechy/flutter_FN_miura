import 'package:family_notes/view/component/password_text_field/notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../style/colors.dart';

/// ログイン画面などで使用するパスワード入力フィールド
class PasswordTextField extends ConsumerWidget {
  const PasswordTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(passwordTextFieldStateProvider);
    final notifier = ref.watch(passwordTextFieldStateProvider.notifier);

    return TextField(
      controller: controller,
      decoration: InputDecoration(
          fillColor: IHSColors.inputColor,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          suffixIcon: GestureDetector(
            onTap: () =>
                notifier.setVisiblePassword(active: !state.visiblePassword),
            child: state.visiblePassword
                ? const Icon(
                    FontAwesomeIcons.solidEye,
                    color: IHSColors.textFieldColor,
                  )
                : const Icon(
                    FontAwesomeIcons.solidEyeSlash,
                    color: IHSColors.textFieldColor,
                  ),
          )),
      obscureText: !state.visiblePassword,
    );
  }
}
