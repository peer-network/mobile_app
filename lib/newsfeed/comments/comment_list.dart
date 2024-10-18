// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/newsfeed/comments/comment_item.dart';
import 'package:peer_app/newsfeed/comments/comments_item.dart'; // Correct import path for CommentItem

class CommentList extends StatelessWidget {
  final List<String> comments;

  const CommentList({Key? key, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF252525), // Dark background matching the theme
      child: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0), // Adds some vertical space between items
            child: CommentItem(comment: comments[index]), // Each comment displayed using CommentItem
          );
        },
      ),
    );
  }
}
