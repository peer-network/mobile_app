import 'package:flutter/material.dart';

class PostInteractions extends StatelessWidget {
  final VoidCallback onLikeTap;
  final VoidCallback onCommentTap;
  final VoidCallback onShareTap;

  const PostInteractions({
    Key? key,
    required this.onLikeTap,
    required this.onCommentTap,
    required this.onShareTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Like button
          GestureDetector(
            onTap: onLikeTap,
            child: Row(
              children: const [
                Icon(
                  Icons.favorite,
                  color: Color(0xFF127EFC), // Blue color for the like icon
                  size: 28,
                ),
                SizedBox(width: 8),
                Text(
                  'Like',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Comment button
          GestureDetector(
            onTap: onCommentTap,
            child: Row(
              children: const [
                Icon(
                  Icons.comment,
                  color: Color(0xFF127EFC), // Blue color for the comment icon
                  size: 28,
                ),
                SizedBox(width: 8),
                Text(
                  'Comment',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Share button
          GestureDetector(
            onTap: onShareTap,
            child: Row(
              children: const [
                Icon(
                  Icons.share,
                  color: Color(0xFF127EFC), // Blue color for the share icon
                  size: 28,
                ),
                SizedBox(width: 8),
                Text(
                  'Share',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
