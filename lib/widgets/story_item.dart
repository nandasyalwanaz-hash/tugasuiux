import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {

  final String username;

  const StoryItem({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8),

      child: Column(
        children: [

          const CircleAvatar(
            radius: 28,
            child: Icon(Icons.person),
          ),

          const SizedBox(height: 4),

          Text(username),
        ],
      ),
    );
  }
}