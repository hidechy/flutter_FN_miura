import 'package:family_notes/view/component/ihs_button/type.dart';
import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

/// IHSのボタンコンポーネント
class IHSButton extends StatelessWidget {
  const IHSButton(
    this.title, {
    Key? key,
    required this.type,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final IHSButtonType type;
  final VoidCallback onPressed;

  Color get backgroundColor {
    switch (type) {
      case IHSButtonType.primary:
        return IHSColors.pink400;
      case IHSButtonType.gray:
        return IHSColors.black400;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: IHSTextStyle.small.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
