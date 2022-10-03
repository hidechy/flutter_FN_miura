import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../style/colors.dart';
import 'menu_item/widget.dart';

class DrawerMenu extends ConsumerWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 40,
            child: DrawerHeader(
              child: Container(),
              decoration: const BoxDecoration(
                color: IHSColors.mainContainerColor,
              ),
            ),
          ),
          DrawerMenuItem(
            buttonText: 'ホーム',
            icon: Icons.home,
            onTap: () => _popToRoot(context),
            endItem: true,
          ),
          const SizedBox(height: 24),
          DrawerMenuItem(
            buttonText: 'お子さまを登録・編集',
            icon: Icons.child_friendly_sharp,
            onTap: () {
              // TODO: 遷移実装
            },
            endItem: false,
          ),
          DrawerMenuItem(
            buttonText: '母子手帳選択',
            icon: Icons.book_outlined,
            onTap: () {
              // TODO: 遷移実装
            },
            endItem: true,
          ),
          const SizedBox(height: 24),
          DrawerMenuItem(
            buttonText: '体重グラフ',
            icon: Icons.add_chart,
            onTap: () {
              // TODO: 遷移実装
            },
            endItem: false,
          ),
          DrawerMenuItem(
            buttonText: '検診入力',
            icon: Icons.local_hospital,
            onTap: () {
              // TODO: 遷移実装
            },
            endItem: false,
          ),
          DrawerMenuItem(
            buttonText: '予防接種',
            icon: Icons.add_alert,
            onTap: () {
              // TODO: 予防接種
            },
            endItem: true,
          ),
          const SizedBox(height: 24),
          DrawerMenuItem(
            buttonText: '設定',
            icon: Icons.settings,
            onTap: () {
              // TODO: 設定
            },
            endItem: false,
          ),
          DrawerMenuItem(
            buttonText: 'お問い合わせ',
            icon: Icons.mail,
            onTap: () {
              // TODO: 遷移実装
            },
            endItem: true,
          ),
          const SizedBox(height: 24),
          DrawerMenuItem(
            buttonText: 'ログアウト',
            icon: Icons.logout,
            onTap: () {
              ref.read(userStateProvider.notifier).logout(onFailed: () {
                Navigator.pop(context);
                IHSUtil.showSnackBar(context: context, msg: 'ログアウトに失敗しました。');
              });
            },
            endItem: true,
          ),
        ],
      ),
    );
  }

  Future<void> _popToRoot(BuildContext context) async {
    Navigator.pop(context); // hide drawer
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}
