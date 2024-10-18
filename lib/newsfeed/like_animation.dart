import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LikesAnimation(),
    );
  }
}

class LikesAnimation extends StatefulWidget {
  @override
  _LikesAnimationState createState() => _LikesAnimationState();
}

class _LikesAnimationState extends State<LikesAnimation> with TickerProviderStateMixin {
  int totalLikes = 0;
  final List<Widget> likeButtons = [];

  void _incrementLikes() {
    setState(() {
      totalLikes++;
    });
    // Add a new like button widget with animation
    likeButtons.add(_buildAnimatedLikeButton());
  }

  // Helper function to create an animated like button with a scale animation
  Widget _buildAnimatedLikeButton() {
    AnimationController animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    Animation<double> scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
      ),
    );

    // Start the animation
    animationController.forward();

    return AnimatedBuilder(
      animation: scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: scaleAnimation.value,
          child: Icon(Icons.favorite, color: Colors.red, size: 30),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Likes Animation')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Total Likes: $totalLikes',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 8.0,
            children: likeButtons,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementLikes,
        child: Icon(Icons.thumb_up),
      ),
    );
  }
}
