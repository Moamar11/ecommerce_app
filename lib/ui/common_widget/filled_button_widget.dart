import 'package:ecommerece_app/ui/common_widget/regular_text_widget.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';

class FilledButtonWidget extends StatelessWidget {
  String buttonText;
  VoidCallback? onButtonPressed;
  Color buttonColor;
  bool isDisabled;
  FilledButtonWidget({
    super.key,
    required this.buttonText,
    this.onButtonPressed,
    this.buttonColor = ColorConstants.kYellowColor,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(
          isDisabled ? Colors.grey : buttonColor,
        ),
        foregroundColor: WidgetStateProperty.all<Color>(
          Colors.white,
        ), // text color
        textStyle: WidgetStateProperty.all<TextStyle>(
          TextStyle(color: Colors.black),
        ),
      ),
      onPressed: () {
        if (onButtonPressed != null) {
          onButtonPressed!();
        }
      },
      child: RegularTextWidget(
        textToDisplay: buttonText,
        textColor: ColorConstants.white,
      ),
    );
  }
}
