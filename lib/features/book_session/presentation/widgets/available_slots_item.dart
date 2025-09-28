import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AvailableSlotsItem extends StatelessWidget {
  const AvailableSlotsItem(
      {super.key, required this.hour, required this.isSelected});
  final int hour;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            isSelected ? Color(0xff0EBE7F) : Color(0xff0EBE7F).withOpacity(.10),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          '$hour:00 PM',
          style: AppStyles.styleMedium12.copyWith(
              fontSize: 13,
              color: isSelected ? Colors.white : Color(0xff0EBE7F)),
        ),
      ),
    );
  }
}
