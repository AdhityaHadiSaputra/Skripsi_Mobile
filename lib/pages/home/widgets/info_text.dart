// ignore_for_file: sdk_version_since

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/component.dart';

class InfoText extends StatelessWidget {
  final String name;
  final String value;
  final String? lastOn;
  final bool isEnabled;
  const InfoText({
    super.key,
    required this.name,
    required this.value,
    required this.isEnabled,
    this.lastOn,
  });
  final boolPattern = r'\b(true|false)\b';
  @override
  Widget build(BuildContext context) {
    String parsedValue = _parseValue();
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            parsedValue,
            style: AppStyle.defaultTS.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: isEnabled ? AppColor.green : null,
            ),
          ),
          if (lastOn != null)
            Text(
              "terakhir aktif selama ${lastOn ?? ""} detik",
              textAlign: TextAlign.right,
              style: AppStyle.defaultTS.copyWith(
                fontSize: 11.sp,
              ),
            ),
          Text(
            name,
            style: AppStyle.defaultTS.copyWith(
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }

  String _parseValue() {
    if (!value.contains(RegExp(boolPattern, caseSensitive: false))) {
      return value;
    }
    String result = "Nyala";
    if (!bool.parse(value.toLowerCase())) {
      result = "Mati";
      return result;
    }
    return result;
  }
}
