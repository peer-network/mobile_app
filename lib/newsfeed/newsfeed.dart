import 'package:flutter/material.dart';
import 'package:peer_app/newsfeed/like_animation.dart';
import 'package:peer_app/newsfeed/post_header.dart';
import 'package:peer_app/newsfeed/post_content.dart';
import 'package:peer_app/newsfeed/post_footer.dart';
import 'package:peer_app/newsfeed/post_divider.dart';
import 'package:peer_app/newsfeed/post_stats.dart';
import 'package:peer_app/newsfeed/post_interactions.dart';
import 'package:peer_app/newsfeed/bottom_bar.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'News Feed',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF252525),
      ),
      backgroundColor: const Color(0xFF252525),
      body: ListView(
        children: [
          // Example Post 1
          PostHeader(
            username: 'john_doe',
            profileImageUrl: 'https://example.com/john_doe.png',
            onFollowTap: () {
              print('Follow button tapped');
            },
            backgroundImage: const AssetImage('PeerSignet_Color_RGB.png'),
          ),
          PostContent(
            title: 'A Day in the Life',
            content: 'hier sollte die api ziehen was alles rein soll',
          ),
          PostStats(
            likesCount: 120,
            commentsCount: 45,
          ),
          PostInteractions(
            onLikeTap: () {
              print('Like button tapped');
            },
            onCommentTap: () {
              print('Comment button tapped');
              // You can add navigation to the comments screen here, e.g.,
              Navigator.pushNamed(context, '/comments');
            },
            onShareTap: () {
              print('Share button tapped');
            }, onPressed: () {  },
          ),
          const PostDivider(),
          
          // Example Post 2
          PostHeader(
            username: 'jane_smith',
            profileImageUrl: 'https://example.com/jane_smith.png',
            onFollowTap: () {
              print('Follow button tapped');
            },
            backgroundImage: const AssetImage('PeerSignet_Color_RGB.png'),
          ),
          PostContent(
            title: 'Exploring the Mountains',
            content: 'Today, I went hiking in the mountains. The view from the top was absolutely breathtaking...',
          ),
          PostStats(
            likesCount: 200,
            commentsCount: 85,
          ),
          PostInteractions(
            onLikeTap: () {
              print('Like button tapped');
            },
            onCommentTap: () {
              print('Comment button tapped');
              // Handle comment button press (navigation, etc.)
            },
            onShareTap: () {
              print('Share button tapped');
            }, onPressed: () {  },
          ),
          const PostDivider(),
          
          // Add more posts here in the same structure
        ],
      ),
      bottomNavigationBar: BottomNavBar(context),
    );
  }
}
