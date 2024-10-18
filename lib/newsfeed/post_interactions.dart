import 'package:flutter/material.dart';

class PostInteractions extends StatefulWidget {
  final VoidCallback onLikeTap;
  final VoidCallback onCommentTap;
  final VoidCallback onShareTap;

  const PostInteractions({
    Key? key,
    required this.onLikeTap,
    required this.onCommentTap,
    required this.onShareTap,
  }) : super(key: key);

  @override
  _PostInteractionsState createState() => _PostInteractionsState();
}

class _PostInteractionsState extends State<PostInteractions> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.elasticOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleLikeTap() {
    if (isLiked) {
      // If already liked, reverse the animation
      _animationController.reverse();
    } else {
      // Play the animation when liked
      _animationController.forward();
    }

    setState(() {
      isLiked = !isLiked; // Toggle like state
    });

    widget.onLikeTap(); // Call the parent onLikeTap function
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Like button with animation
          GestureDetector(
            onTap: _handleLikeTap,
            child: Row(
              children: [
                AnimatedBuilder(
                  animation: _scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Icon(
                        Icons.favorite,
                        color: isLiked ? Colors.red : const Color(0xFF127EFC), // Red when liked
                        size: 28,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 8),
                const Text(
                  'Like',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Comment button
          GestureDetector(
            onTap: widget.onCommentTap,
            child: Row(
              children: const [
                Icon(
                  Icons.comment,
                  color: Color(0xFF127EFC),
                  size: 28,
                ),
                SizedBox(width: 8),
                Text(
                  'Comment',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Share button
          GestureDetector(
            onTap: widget.onShareTap,
            child: Row(
              children: const [
                Icon(
                  Icons.share,
                  color: Color(0xFF127EFC),
                  size: 28,
                ),
                SizedBox(width: 8),
                Text(
                  'Share',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
