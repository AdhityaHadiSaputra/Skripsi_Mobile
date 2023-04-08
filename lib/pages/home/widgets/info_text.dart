import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/component.dart';

class InfoText extends StatelessWidget {
  final String name;
  final String value;
  final bool isEnabled;
  const InfoText({
    super.key,
    required this.name,
    required this.value,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            value,
            style: AppStyle.defaultTS.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: isEnabled ? AppColor.green : null,
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
}
