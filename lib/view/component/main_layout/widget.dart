import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../style/colors.dart';
import '../drawer_menu/widget.dart';

class MainLayout extends ConsumerWidget {
  const MainLayout({
    Key? key,
    required this.body,
    required this.title,
    this.backgroundColor = IHSColors.mainContainerColor,
    this.showDrawer = true,
    this.automaticallyImplyLeading = true,
  }) : super(key: key);
  final String title;
  final Widget body;
  final Color backgroundColor;
  final bool showDrawer;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: IHSColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: IHSColors.titleColor),
        title: Text(title),
        automaticallyImplyLeading: automaticallyImplyLeading,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Center(
            child: body,
          ),
        ),
      ),
      endDrawer: showDrawer ? dispDrawer(context) : null,
    );
  }

  Widget dispDrawer(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: IHSColors.mainContainerColor,
      ),
      child: const DrawerMenu(),
    );
  }
}
