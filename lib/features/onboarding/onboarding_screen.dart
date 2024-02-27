import 'package:doctor_booking/core/theming/styles.dart';
import 'package:doctor_booking/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_booking/features/onboarding/widgets/get_started_button.dart';
import 'package:doctor_booking/features/onboarding/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const LogoAndName(),
            SizedBox(height: 30.h),
            const DoctorImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(children: [
                Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13GrayRegular),
                SizedBox(height: 30.h),
                const GetStartedButton()
              ]),
            ),
          ],
        ),
      )),
    ));
  }
}
