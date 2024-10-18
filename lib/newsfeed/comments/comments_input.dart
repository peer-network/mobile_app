import 'package:flutter/material.dart';

class CommentInput extends StatefulWidget {
  final Function(String) onCommentAdded;

  const CommentInput({Key? key, required this.onCommentAdded}) : super(key: key);

  @override
  _CommentInputState createState() => _CommentInputState();
}

class _CommentInputState extends State<CommentInput> {
  final TextEditingController _controller = TextEditingController();

  void _submitComment() {
    final comment = _controller.text;
    if (comment.isNotEmpty) {
      widget.onCommentAdded(comment); // Passes the comment to the callback
      _controller.clear(); // Clear the input field after submission
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2E2E2E), // Background color of the input section
      padding: EdgeInsets.all(8.0), 
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Write a comment...',
                hintStyle: TextStyle(
                  color: Color(0xFFBABABA), // Hint color
                  fontSize: 14,
                  fontFamily: 'Inter', // Font family
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xFF2E2E2E), // Background of the input field
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF707070), width: 2.0), // Border color and width
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: TextStyle(
                color: Color(0xFFFFFFFF), // Text color
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(width: 8.0),
          IconButton(
            icon: Icon(Icons.send, color: Color(0xFF707070)), // Send button color
            onPressed: _submitComment, // Calls the function to submit the comment
          ),
        ],
      ),
    );
  }
}
