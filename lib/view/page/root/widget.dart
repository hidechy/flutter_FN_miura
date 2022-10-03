import 'package:family_notes/view/page/home/widget.dart';
import 'package:family_notes/view/page/login/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

 import '../../../provider/user/notifier.dart';
import '../book_select/widget.dart';

class RootPage extends ConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userStateProvider);
    return state.map(
      unauthenticated: (_) => LoginPage(),
      authenticated: (UserStateAuthenticated state) {
        // すでに母子手帳選択済みならホームへ
        if (state.selectedBook) {
          return const HomePage();
        }
        return const BookSelectPage();
      },
    );
  }
}
