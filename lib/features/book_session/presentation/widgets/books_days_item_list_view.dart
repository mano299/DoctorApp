import 'package:doctor_app/features/book_session/presentation/widgets/book_days_item.dart';
import 'package:flutter/material.dart';

class BooksDaysItemListView extends StatefulWidget {
  const BooksDaysItemListView({super.key});

  @override
  State<BooksDaysItemListView> createState() => _BooksDaysItemListViewState();
}

class _BooksDaysItemListViewState extends State<BooksDaysItemListView> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: GestureDetector(
          onTap: () {
            currentIndex = index;
            setState(() {});
          },
          child: BookDaysItem(
            head: 'Today, 23 Feb',
            sets: 0,
            isSelcted: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
