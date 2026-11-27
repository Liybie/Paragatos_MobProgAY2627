import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Paragatos',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'Hello everyone! Starting the week strong.',
          numOfLikes: 100,
          date: 'November 20',
        ),
        NewsFeedCard(
          userName: 'Liybie Paragatos',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'Spotted this owl sa tabe',
          numOfLikes: 200,
          hasImage: true,
          postImage: 'assets/images/owl.jpg',
          date: 'December 1',
        ),
        NewsFeedCard(
          userName: 'Paragatos Liybie',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'MOTO GP CHAMPION LEZGOOOO.',
          numOfLikes: 340,
          hasImage: true,
          postImage: 'assets/images/marc_marquez.png',
          date: 'December 2',
        ),
        NewsFeedCard(
          userName: 'Paragatos Liybie',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'Cutting yarn?.',
          numOfLikes: 340,
          hasImage: true,
          date: 'December 2',
        ),
        NewsFeedCard(
          userName: 'Paragatos Liybie',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'Bakal ako.',
          numOfLikes: 340,
          hasImage: true,
          date: 'December 2',
        ),
        NewsFeedCard(
          userName: 'Paragatos Liybie',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'Palabasin nyo na si Mikee',
          numOfLikes: 340,
          hasImage: true,
          date: 'December 2',
        ),
        NewsFeedCard(
          userName: 'Paragatos Liybie',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'Cutting Wow.',
          numOfLikes: 340,
          hasImage: true,
          date: 'December 2',
        ),
          NewsFeedCard(
          userName: 'Liybie Paragatos',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'huh',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 1',
        ),
          NewsFeedCard(
          userName: 'Liybie Paragatos',
          profileImage: 'assets/images/Liybie.png',
          postContent: 'Spotted this owl again sa tabe',
          numOfLikes: 200,
          hasImage: true,
          postImage: 'assets/images/owl.jpg',
          date: 'December 1',
        ),
        
      ],
    );
  }
}