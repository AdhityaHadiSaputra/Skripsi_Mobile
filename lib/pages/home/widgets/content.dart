import 'package:flutter/material.dart';
import '../../../extensions/extension.dart';

import '../../../gen/assets.gen.dart';
import 'widgets.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InfoTile(
              icon: Assets.icons.iconSun.image(height: 40, width: 40),
              name: "fan",
              value: "OFF",
            ),
            26.boxWidth,
            InfoTile(
              icon: Assets.icons.iconBulb.image(height: 40, width: 40),
              name: "temperature",
              value: "18\u00B0",
            ),
          ],
        ),
        24.boxHeight,
        Row(
          children: [
            InfoTile(
              icon: Assets.icons.iconDrop.image(height: 40, width: 40),
              name: "moisture",
              value: "100%",
            ),
            26.boxWidth,
            InfoTile(
              icon: Assets.icons.iconPlant.image(height: 40, width: 40),
              name: "nutrient",
              value: "1550 ppm",
            ),
          ],
        ),
        24.boxHeight,
        Row(
          children: [
            InfoTile(
              icon: Assets.icons.iconDrop.image(height: 40, width: 40),
              name: "pompa air",
              value: "OFF",
            ),
            26.boxWidth,
            InfoTile(
              icon: Assets.icons.iconPlant.image(height: 40, width: 40),
              name: "pompa nutrisi",
              value: "OFF",
            ),
          ],
        ),
      ],
    );
  }
}
