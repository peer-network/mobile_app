import 'package:flutter/material.dart';

class PeerPrinciplePage extends StatefulWidget {
  const PeerPrinciplePage({super.key});

  @override
  _PeerPrinciplePageState createState() => _PeerPrinciplePageState();
}

class _PeerPrinciplePageState extends State<PeerPrinciplePage> {
  final GlobalKey _appOverviewKey = GlobalKey();
  final GlobalKey _featuresKey = GlobalKey();
  final GlobalKey _newsfeedKey = GlobalKey();
  final GlobalKey _groupsKey = GlobalKey();
  final GlobalKey _chatKey = GlobalKey();
  final GlobalKey _advertisementsKey = GlobalKey();
  final GlobalKey _tokenomicsKey = GlobalKey();

  // Function to scroll to a specific section
 void _scrollToSection(GlobalKey key) {
  if (key.currentContext != null) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  } else {
    print('The section is not available in the widget tree yet.');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peer Principle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Table of Contents
            const Text(
              'Table of Contents',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('1. App Overview'),
              onTap: () => _scrollToSection(_appOverviewKey),
            ),
            ListTile(
              title: const Text('2. Features of the Peer App'),
              onTap: () => _scrollToSection(_featuresKey),
            ),
            ListTile(
              title: const Text('    - Newsfeed'),
              onTap: () => _scrollToSection(_newsfeedKey),
            ),
            ListTile(
              title: const Text('    - Groups'),
              onTap: () => _scrollToSection(_groupsKey),
            ),
            ListTile(
              title: const Text('    - Peer-to-Peer Chat'),
              onTap: () => _scrollToSection(_chatKey),
            ),
            ListTile(
              title: const Text('    - Marketplace'),
           
            ),
            ListTile(
              title: const Text('    - Advertisements'),
              onTap: () => _scrollToSection(_advertisementsKey),
            ),
            ListTile(
              title: const Text('3. MVP Tokenomics Specifications'),
              onTap: () => _scrollToSection(_tokenomicsKey),
            ),
            const Divider(height: 40, thickness: 2),

            // App Overview Section
            Container(
              key: _appOverviewKey,
              child: const Text(
                'App Overview',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'The Peer Principle app is designed to foster peer-to-peer interaction and collaboration. '
              'Users can connect, share resources, and engage in discussions through groups, chats, '
              'and a newsfeed. The app includes features like a marketplace, advertisement sections, '
              'and other social and business tools to enhance community-driven interactions.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Features Section
            Container(
              key: _featuresKey,
              child: const Text(
                'Features of the Peer App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              key: _newsfeedKey,
              child: const Text(
                '- Newsfeed',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Stay updated with peer activities through the newsfeed, where users can post and interact.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              key: _groupsKey,
              child: const Text(
                '- Groups',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Users can create and manage groups for activities, collaboration, and discussions.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              key: _chatKey,
              child: const Text(
                '- Peer-to-Peer Chat',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Facilitates direct communication between users through a seamless chat interface.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
      
              child: const Text(
                '- Marketplace',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'The marketplace enables users to trade goods and services with each other.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              key: _advertisementsKey,
              child: const Text(
                '- Advertisements',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Users can promote their products and services through the advertisement section.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Tokenomics Section
            Container(
              key: _tokenomicsKey,
              child: const Text(
                'MVP Tokenomics Specifications',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Peer Tokens are distributed daily among users based on activity. '
              'The total supply of Peer Tokens is capped at around 18,900,000, with a decreasing '
              'daily distribution that starts at 5,000 tokens per day.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Users earn Peer Tokens based on their interactions within the app. The tokens can be held, '
              'traded, or used within the app for features such as posts, likes, comments, and ads.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Peer Tokens follow specific restrictions and are primarily designed for in-app use, '
              'and not as speculative assets.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
