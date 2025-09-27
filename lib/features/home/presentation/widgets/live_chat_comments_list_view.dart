import 'package:doctor_app/features/home/presentation/widgets/live_chat_comment.dart';
import 'package:flutter/material.dart';

class LiveChatCommentsListView extends StatelessWidget {
  const LiveChatCommentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => LiveChatComment(),
    );
  }
}
