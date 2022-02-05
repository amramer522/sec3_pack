import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // change lang
                translator.setNewLanguage(
                  context,
                  newLanguage: translator.activeLanguageCode == 'ar' ? 'en' : 'ar',
                  remember: true,
                  restart: true,
                );

              },
              child: Text(translator.activeLanguageCode == 'ar' ?"En":"Ar"),
            ),
            Text("hint".tr()),
            ElevatedButton(
                onPressed: () {
                  MotionToast.success(
                          title: "Success Motion Toast",
                          titleStyle: TextStyle(fontWeight: FontWeight.bold),
                          description: "Example of success motion toast",
                          animationType: ANIMATION.FROM_LEFT,
                          position: MOTION_TOAST_POSITION.BOTTOM,
                          descriptionStyle: TextStyle(fontSize: 12.sp),
                          width: 300.w)
                      .show(context);
                  print("hello");
                },
                child: Text("show_toast".tr())),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 100.h,
              width: 200.w,
              color: Colors.red,
              child: Center(
                  child: Text(
                "hint".tr(),
                style: TextStyle(fontSize: 35.sp),
              )),
            )
          ],
        ),
      ),
    );
  }
}
