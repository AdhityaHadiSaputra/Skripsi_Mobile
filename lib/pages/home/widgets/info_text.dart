import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/component.dart';

class InfoText extends StatelessWidget {
  final String name;
  final String value;
  const InfoText({
    super.key,
    required this.name,
    required this.value,
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
