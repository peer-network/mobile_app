import 'package:flutter/material.dart';

class PostStats extends StatelessWidget {
  final int likesCount;
  final int commentsCount;

  const PostStats({
    Key? key,
    required this.likesCount,
    required this.commentsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Likes count
          Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Color(0xFF127EFC), // Blue color for the heart icon
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                '$likesCount Likes',
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // Comments count
          Row(
            children: [
              const Icon(
                Icons.comment,
                color: Color(0xFF127EFC), // Blue color for the comment icon
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                '$commentsCount Comments',
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
