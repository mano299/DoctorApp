import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LiveChatMenu extends StatelessWidget {
  const LiveChatMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xff0EBE7E),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Add a Comment......',
        hintStyle: AppStyles.styleLight12.copyWith(fontSize: 14),
        hoverColor: Color(0xff0EBE7E),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 18),
          child: CircleAvatar(
            backgroundColor: Color(0xff0EBE7E),
            child: Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Icon(
            Icons.sentiment_satisfied_alt_outlined,
            color: Color(0xff677294),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    );
  }
}
