import 'package:ecommerece_app/core/constants/app_constatnts.dart';
import 'package:ecommerece_app/ui/common_widget/regular_text_widget.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegularTextWidget(
                  textToDisplay: AppConstants.kAppName,
                  textColor: ColorConstants.black,
                ),
                RegularTextWidget(
                  textToDisplay: AppConstants.kTagLine,
                  textColor: ColorConstants.black,
                  fontSize: 10,
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: ColorConstants.kYellowColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
