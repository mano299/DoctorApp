import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BookDaysItem extends StatefulWidget {
  const BookDaysItem({super.key, required this.head, required this.sets});
  final String head;
  final int sets;
  @override
  State<BookDaysItem> createState() => _BookDaysItemState();
}

class _BookDaysItemState extends State<BookDaysItem> {
  Color backColor = Colors.transparent;
  Color textColor = Colors.black;
  bool isSelcted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(4),
        border: !isSelcted
            ? Border.all(
                color: Color(0xff677294),
                width: 0.5,
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            Text(
              widget.head,
              style: AppStyles.styleMedium18
                  .copyWith(fontSize: 16, color: textColor),
            ),
            Text(
              '${widget.head} slots available',
              style: AppStyles.styleLight10,
            ),
          ],
        ),
      ),
    );
  }
}
