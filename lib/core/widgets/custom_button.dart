import 'package:flutter/material.dart';

import '../../features/Navigation/presentation/views/navigation_view.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.ontap,
    this.bgColor,
  });
  final String text;
  final void Function()? ontap;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))
          .copyWith(
              backgroundColor: WidgetStateColor.fromMap(
                  {WidgetState.any: Color(0xff0EBE7F)})),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13.0),
        child: Text(
          text,
          style: AppStyles.styleMedium18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
