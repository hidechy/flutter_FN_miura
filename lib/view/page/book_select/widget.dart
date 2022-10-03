import 'package:family_notes/view/component/main_layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/user/notifier.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';

class BookSelectPage extends ConsumerWidget {
  const BookSelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref
        .watch(userStateProvider)
        .mapOrNull(authenticated: (state) => state.user);

    return MainLayout(
      title: '手帳選択',
      showDrawer: false,
      body: Column(
        children: [
          //TODO 暫定的にログインアカウントを表示
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.all(16),
            decoration:
                BoxDecoration(color: Colors.blueAccent.withOpacity(0.2)),
            child: DefaultTextStyle(
              style: IHSTextStyle.medium.copyWith(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('user_id: ${currentUser?.userId ?? ""} '),
                  Text("nickname: ${currentUser?.nickname ?? ""}"),
                  Text("email:\n${currentUser?.email ?? ""}"),
                  Text("access_token: ${currentUser?.accessToken ?? ""}"),
                ],
              ),
            ),
          ),
          //TODO 暫定的にログインアカウントを表示
          const SizedBox(height: 32),
          Text(
            '母子手帳を選んでください',
            style: IHSTextStyle.small,
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              ref.read(userStateProvider.notifier).onSelectedBook();
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: IHSColors.borderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DefaultTextStyle(
                style: IHSTextStyle.small.copyWith(
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '妊娠5ヶ月',
                      style: IHSTextStyle.medium.copyWith(
                        color: Colors.black,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 42),
                    Text(
                      '次回検診日　xxxx/xx/xx',
                      style: IHSTextStyle.small.copyWith(
                        color: Colors.black,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              ref.read(userStateProvider.notifier).onSelectedBook();
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: IHSColors.borderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DefaultTextStyle(
                style: IHSTextStyle.medium.copyWith(
                  letterSpacing: 2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '花子ちゃん',
                      style: IHSTextStyle.medium.copyWith(
                        color: Colors.black,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 42),
                    Text(
                      '次回検診日　xxxx/xx/xx',
                      style: IHSTextStyle.small.copyWith(
                        color: Colors.black,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
