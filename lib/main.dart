import 'package:flutter/material.dart';
import 'package:peer_app/landing_page/forgot_password/forgot_password.dart';
import 'package:peer_app/landing_page/login/login_page.dart';
import 'package:peer_app/landing_page/peer_principle/principle.dart';
import 'package:peer_app/landing_page/register_screen/register_screen.dart';
import 'package:peer_app/newsfeed/comments/comments_screen.dart';
import 'package:peer_app/newsfeed/newsfeed.dart';
import 'package:peer_app/screens/chats.dart';
import 'package:peer_app/screens/create_post.dart';
import 'package:peer_app/screens/profile.dart';
import 'package:peer_app/screens/wallet.dart';
import 'package:peer_app/landing_page/verify/verify.dart';
import 'landing_page/landing page/landing_page.dart'; // Import the landing page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LandingPage(), // Set the LandingPage as the home screen
        routes: {
          '/register': (context) => const RegisterScreen(),
          '/landing': (context) => const LandingPage(),
          '/forgot': (context) => const ForgotPasswordErrorScreen(),
          '/principle': (context) => PeerPrinciplePage(),
          '/login': (context) => LoginPage(),
          '/newsfeed': (context) => NewsFeed(),
          '/wallet': (context) => WalletScreen(),
          '/posting': (context) => PostingScreen(),
          '/chats': (context) => ChatsScreen(),
          '/profile': (context) => ProfileScreen(),
          '/verify': (context) => VerifyScreen(),
          '/comments': (context) => CommentScreen(),
        });
  }
}
