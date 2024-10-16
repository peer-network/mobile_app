import 'package:flutter/material.dart';
import 'package:peer_app/screens/wallet.dart'; // Import your screen files here
import 'package:peer_app/screens/create_post.dart';
import 'package:peer_app/newsfeed/newsfeed.dart';
import 'package:peer_app/screens/chats.dart';
import 'package:peer_app/screens/profile.dart';

Widget BottomNavBar(BuildContext context) {
  return BottomAppBar(
    color: const Color(0xFF2E2E2E),
    elevation: 10.0,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.wallet, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WalletScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_box, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostingScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.home, color: Colors.blue), // Active icon (blue)
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => NewsFeed()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatsScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
    ),
  );
}
