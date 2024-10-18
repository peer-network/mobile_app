import 'package:flutter/material.dart';
import 'package:peer_app/newsfeed/comments/comments_model.dart'; // Correct import for CommentModel
import 'package:peer_app/newsfeed/comments/comment_list.dart'; // Import CommentList
import 'package:peer_app/newsfeed/comments/comment_input.dart';
import 'package:peer_app/newsfeed/comments/comment_model.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  final List<CommentModel> comments = [];

  void _addComment(String commentText) {
    final newComment = CommentModel(
      comment: commentText,
      userName: 'User_${comments.length + 1}', // Placeholder username
      timestamp: DateTime.now(),
    );

    setState(() {
      comments.add(newComment);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: CommentList(comments: comments.map((comment) => comment.comment).toList()), 
            // Pass only comment texts for now, you can modify CommentList to accept CommentModel
          ),
          CommentInput(onCommentAdded: _addComment), // Handles new comment input
        ],
      ),
    );
  }
}
