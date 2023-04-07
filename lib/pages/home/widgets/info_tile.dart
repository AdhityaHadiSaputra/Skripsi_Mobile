import 'package:flutter/material.dart';

import '../../../component/component.dart';
import 'widgets.dart';

class InfoTile extends StatelessWidget {
  final Image icon;
  final String name;
  final String value;
  const InfoTile({
    super.key,
    required this.icon,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 155,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: icon,
            ),
            InfoText(name: name, value: value),
          ],
        ),
      ),
    );
  }
}
