import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransparentTextField extends StatelessWidget {
  const TransparentTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        hintFadeDuration: Duration(milliseconds: 600),
        hintText: hint,
        hintStyle: AppStyles.styleLight16,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xff677294).withOpacity(0.20),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );
  }
}
