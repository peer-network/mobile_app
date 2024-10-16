/*


import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  final int likesCount;
  final int commentsCount;
  final VoidCallback onLikeTap;
  final VoidCallback onCommentTap;
  final VoidCallback onShareTap;

  const PostFooter({
    Key? key,
    required this.likesCount,
    required this.commentsCount,
    required this.onLikeTap,
    required this.onCommentTap,
    required this.onShareTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color(0xFF2E2E2E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Post interaction buttons: like, comment, share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Like button
              Row(
                children: [
                  GestureDetector(
                    onTap: onLikeTap,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '$likesCount',
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              // Comment button
              Row(
                children: [
                  GestureDetector(
                    onTap: onCommentTap,
                    child: const Icon(
                      Icons.comment,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '$commentsCount',
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              // Share button
              GestureDetector(
                onTap: onShareTap,
                child: const Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/