import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/component.dart';
import '../../../component/route/routers.gr.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({super.key});

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => AutoRouter.of(context).push(const HomeRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Welcome \n',
              style: TextStyle(
                color: AppColor.white,
                fontSize: 24.sp,
                fontWeight: FontWeight.w300,
              ),
              children: const [
                TextSpan(text: 'To\n'),
                TextSpan(text: 'My Garden'),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'Plant \n Sensors',
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppDimen.h30),
              Text(
                'let’s keep your plant \nfresh and healthy',
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppDimen.h60),
              const CircularProgressIndicator(
                color: AppColor.white,
                strokeWidth: 2.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
