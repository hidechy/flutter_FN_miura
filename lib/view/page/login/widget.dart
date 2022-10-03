import 'package:family_notes/view/component/ihs_button/type.dart';
import 'package:family_notes/view/component/ihs_button/widget.dart';
import 'package:family_notes/view/component/ihs_text_button/widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../component/email_text_field/widget.dart';
import '../../component/password_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import 'layout/widget.dart';

/// ログイン画面
class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LoginLayout(
      body: Column(
        children: [
          const SizedBox(height: 32),
          SizedBox(
            height: 200,
            child: Image.asset('assets/images/mother_mark.png'),
          ),
          const SizedBox(height: 32),
          Text(
            'メールアドレスでログイン',
            style: IHSTextStyle.medium,
          ),
          const SizedBox(height: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'メールアドレス',
                style: IHSTextStyle.xSmall,
              ),
              const SizedBox(height: 8),
              EmailTextField(controller: _emailController),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'パスワード',
                style: IHSTextStyle.xSmall,
              ),
              const SizedBox(height: 8),
              PasswordTextField(controller: _passwordController),
            ],
          ),
          const SizedBox(height: 24),
          IHSButton(
            'ログイン',
            type: IHSButtonType.primary,
            onPressed: () {
              ref.read(userStateProvider.notifier).login(
                    email: _emailController.text,
                    password: _passwordController.text,
                    onFailed: () {
                      IHSUtil.showSnackBar(
                          context: context, msg: 'ログインに失敗しました。');
                    },
                  );
            },
          ),
          const SizedBox(height: 24),
          // ダミー値セットボタン
          if (kDebugMode) _buildDebugButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '新規でアカウントを作成する方は、',
                style: IHSTextStyle.small.copyWith(
                  color: IHSColors.titleColor,
                ),
              ),
              IHSTextButton(
                'こちら',
                onPressed: () {
                  // TODO: サインアップ画面に遷移(pushReplacement)
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '※パスワードを忘れた方は、',
                style: IHSTextStyle.small.copyWith(
                  color: IHSColors.titleColor,
                ),
              ),
              IHSTextButton(
                'こちら',
                onPressed: () {
                  // TODO: パスワード再登録画面に遷移(pushReplacement)
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// ダミー値セット用Widget
  Widget _buildDebugButton() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.orangeAccent.withOpacity(0.3),
          ),
          child: TextButton(
            onPressed: () {
              _emailController.text = 'loginuser@aaa.com';
              _passwordController.text = 'password';
            },
            child: Text(
              'ダミー値セット',
              style: IHSTextStyle.medium,
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
