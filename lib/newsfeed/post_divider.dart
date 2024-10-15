import 'package:flutter/material.dart';

class PostDivider extends StatelessWidget {
  const PostDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color(0xFFBABABA), // Light gray color for the divider
    );
  }
}
