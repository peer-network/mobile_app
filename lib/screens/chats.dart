import 'package:flutter/material.dart';
import 'package:peer_app/newsfeed/bottom_bar.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final List<Map<String, String>> _chats = [
    {
      'name': 'John Doe',
      'lastMessage': 'Hey, how are you?',
      'time': '2:15 PM',
      'profilePic': 'assets/john_doe.png'
    },
    {
      'name': 'Jane Smith',
      'lastMessage': 'Let\'s catch up later!',
      'time': '1:12 PM',
      'profilePic': 'assets/jane_smith.png'
    },
    {
      'name': 'Alice Brown',
      'lastMessage': 'Can you send me the files?',
      'time': 'Yesterday',
      'profilePic': 'assets/alice_brown.png'
    },
    // Add more chats here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E2E2E),
        title: const Text(
          'Chats',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
        shadowColor: Colors.black.withOpacity(0.25),
        elevation: 10,
      ),
      backgroundColor: const Color(0xFF252525), // Background color of the chat list
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.separated(
          itemCount: _chats.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(_chats[index]['profilePic']!),
                radius: 24,
              ),
              title: Text(
                _chats[index]['name']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),
              subtitle: Text(
                _chats[index]['lastMessage']!,
                style: const TextStyle(color: Color(0xFFBABABA), fontSize: 14),
              ),
              trailing: Text(
                _chats[index]['time']!,
                style: const TextStyle(color: Color(0xFFBABABA), fontSize: 12),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Opening chat with ${_chats[index]['name']}')),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Color(0xFFBABABA),
              thickness: 1,
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(context),
    );
  }
}
