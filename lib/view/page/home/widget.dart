import 'package:flutter/material.dart';

import '../../component/main_layout/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: '母子手帳アプリ',
      automaticallyImplyLeading: false,
      body: Text('HomeScreen'),
    );
  }
}
