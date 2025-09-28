import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/book_session/presentation/widgets/available_slots_grid_view.dart';
import 'package:flutter/material.dart';

class AvailableSlotsSection extends StatelessWidget {
  const AvailableSlotsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Afternoon 7 slots',
          style: AppStyles.styleMedium18,
        ),
        SizedBox(height: 16),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          child: AvailableSlotsGridView(),
        ),
      ],
    );
  }
}
