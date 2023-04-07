import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../component/component.dart';
import '../../extensions/extension.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = AutoRoute(
    path: '/home',
    page: HomePage,
    initial: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              68.boxHeight,
              const Content(),
            ],
          ),
        ),
      ),
    );
  }
}
