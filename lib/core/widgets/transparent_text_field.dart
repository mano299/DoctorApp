import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransparentTextField extends StatefulWidget {
  const TransparentTextField(
      {super.key, required this.hint, this.password = false});
  final String hint;
  final bool? password;
  @override
  State<TransparentTextField> createState() => _TransparentTextFieldState();
}

class _TransparentTextFieldState extends State<TransparentTextField> {
  IconData suffixIcon = Icons.visibility;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true ? _obscureText : false,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        hintFadeDuration: Duration(milliseconds: 600),
        hintText: widget.hint,
        hintStyle: AppStyles.styleLight16,
        suffixIcon: widget.password!
            ? IconButton(
                onPressed: () {
                  _obscureText = !_obscureText;
                  setState(() {});
                },
                icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
              )
            : null,
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
