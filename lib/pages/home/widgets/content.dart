import 'package:flutter/material.dart';
import '../../../extensions/extension.dart';

import '../../../gen/assets.gen.dart';
import '../../../models/models.dart';
import 'widgets.dart';

class Content extends StatelessWidget {
  const Content({super.key, required this.plants});

  final Plants plants;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InfoTile(
              icon: Assets.icons.iconSun.image(height: 40, width: 40),
              name: "fan",
              value: plants.fan.toString().toCapitalized(),
              isEnabled: plants.fan ?? false,
            ),
            26.boxWidth,
            InfoTile(
              icon: Assets.icons.iconBulb.image(height: 40, width: 40),
              name: "temperature",
              value: "${plants.temperature?.round()}",
            ),
          ],
        ),
        24.boxHeight,
        Row(
          children: [
            InfoTile(
              icon: Assets.icons.iconDrop.image(height: 40, width: 40),
              name: "moisture",
              value: "${plants.moisturization?.round()}%",
            ),
            26.boxWidth,
            InfoTile(
              icon: Assets.icons.iconPlant.image(height: 40, width: 40),
              name: "nutrient",
              value: "${plants.nutrition?.round()} ppm",
            ),
          ],
        ),
        24.boxHeight,
        Row(
          children: [
            InfoTile(
              icon: Assets.icons.iconDrop.image(height: 40, width: 40),
              name: "pompa air",
              value: plants.waterPump.toString().toCapitalized(),
              isEnabled: plants.waterPump ?? false,
            ),
            26.boxWidth,
            InfoTile(
              icon: Assets.icons.iconPlant.image(height: 40, width: 40),
              name: "pompa nutrisi",
              value: plants.nutritionPump.toString().toCapitalized(),
              isEnabled: plants.nutritionPump ?? false,
            ),
          ],
        ),
      ],
    );
  }
}
