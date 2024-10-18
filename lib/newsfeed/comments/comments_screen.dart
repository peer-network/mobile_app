import 'package:flutter/material.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      appBar: AppBar(
        backgroundColor: Color(0xFF2E2E2E),
        title: Text(
          'Comments',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color(0xFFFFFAFA),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFFAFA)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.send, color: Colors.transparent), // Invisible icon
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Assuming there are 10 comments for now
              itemBuilder: (context, index) {
                return CommentItem(); // Define this widget separately
              },
            ),
          ),
          Divider(color: Color(0xFF707070)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFF2E2E2E),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xFF707070), width: 2),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add a comment...',
                        hintStyle: TextStyle(color: Color(0xFFBABABA)),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Color(0xFF707070)),
                  onPressed: () {
                    // Send action
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/profile_pic.png'), // Replace with actual image
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFFFFFAFA),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'This is a comment text. It can be a bit longer depending on the content of the comment.',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFFFFFAFA),
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      '2 hours ago',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color(0xFFFFFAFA),
                      ),
                    ),
                    SizedBox(width: 32),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Color(0xFFFFFAFA), size: 13),
                        SizedBox(width: 4),
                        Text(
                          '10',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Color(0xFFFFFAFA),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Reply',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xFFFFFAFA),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
