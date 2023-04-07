import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import 'widgets/widgets.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  static const route = AutoRoute(
    path: '/splash',
    page: InitialPage,
    initial: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.background.image(
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const DescriptionWidget(),
        ],
      ),
    );
  }
}
