import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  final String title;
  final String content;

  const PostContent({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: const Color(0xFF2E2E2E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Post title
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Colors.white,
              height: 1.2, // Line height
            ),
          ),
          const SizedBox(height: 12),
          // Post content
          Text(
            content,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.white,
              height: 1.4, // Line height
            ),
          ),
        ],
      ),
    );
  }
}
