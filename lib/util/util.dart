import 'package:flutter/material.dart';

import '../view/style/text_style.dart';

// ignore: avoid_classes_with_only_static_members
class IHSUtil {
  IHSUtil._();

  static void showSnackBar(
      {required BuildContext context, required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: IHSTextStyle.small.copyWith(
            color: Colors.white,
          ),
        ),
        duration: const Duration(seconds: 5),
      ),
    );
  }
}
