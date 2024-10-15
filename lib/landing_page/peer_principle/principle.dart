import 'package:flutter/material.dart';

class PeerPrinciplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peer Principle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Peer Principle',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'This app is designed to foster peer-to-peer interaction and collaboration. '
              'Through features like groups, chats, and a newsfeed, users can easily connect with each other, '
              'share resources, and engage in discussions. Each user has a profile that displays their activities and interactions, '
              'and the app includes various social and business functions like advertisements and a marketplace (shop). '
              'The Peer Principle emphasizes community-driven interactions, where the platform serves as a facilitator for people '
              'to help each other, exchange goods and services, and participate in group-based activities.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Features:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '- Newsfeed for staying updated with peer activities',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Group creation and management for organizing activities',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Peer-to-peer chat for seamless communication',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Marketplace for trading goods and services',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Advertiser section for promoting products',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}