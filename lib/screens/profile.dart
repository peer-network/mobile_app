import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Navigate to the Edit Profile screen (to be implemented)
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Edit Profile feature coming soon!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Profile Picture
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with user's profile picture
            ),

            const SizedBox(height: 10),

            // Display Name and Username
            const Text(
              'Pamela Jones',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              '@pamela_jones',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // Bio Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Flutter developer, tech enthusiast, and coffee lover. Sharing my coding journey with the world!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            const SizedBox(height: 20),

            // Follow Information (Posts, Followers, Following)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatColumn('Posts', '120'),
                  _buildStatColumn('Followers', '2.5K'),
                  _buildStatColumn('Following', '340'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Divider(),

            // Recent Posts Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Posts',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Recent Posts (Static for now)
            _buildRecentPost(
              'Exploring Flutter widgets',
              'Yesterday',
              'Learning how to create custom widgets in Flutter. It\'s amazing how flexible the framework is!',
            ),
            _buildRecentPost(
              'My thoughts on Flutter state management',
              '2 days ago',
              'State management in Flutter can be tricky, but once you understand it, it\'s really powerful.',
            ),
            _buildRecentPost(
              'Sharing my first Flutter project',
              'Last week',
              'Excited to share my first Flutter project with everyone. It\'s a simple to-do app, but I learned so much!',
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build the stats section (posts, followers, following)
  Widget _buildStatColumn(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }

  // Helper function to build recent posts
  Widget _buildRecentPost(String title, String date, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(date, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 10),
          Text(content),
          const Divider(),
        ],
      ),
    );
  }
}
