import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xff677294),
          ),
          suffixIcon: const Icon(
            Icons.close,
            color: Color(0xff677294),
          ),
          hintText: 'Search...',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent))),
    );
  }
}
