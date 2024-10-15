import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final String username;
  final String profileImageUrl;
  final VoidCallback onFollowTap;

  const PostHeader({
    Key? key,
    required this.username,
    required this.profileImageUrl,
    required this.onFollowTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      width: double.infinity,
      height: 64,
      color: const Color(0xFF2E2E2E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // User profile info
          Row(
            children: [
              // Profile picture
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(profileImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Username
              Text(
                username,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // Follow button
          GestureDetector(
            onTap: onFollowTap,
            child: Container(
              width: 80,
              height: 32,
              decoration: BoxDecoration(
                color: const Color(0xFFB8D8D8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF00070F),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
