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
          postContent: 'Hello',
          numOfLikes: 100,
          date: 'November 20',
        ),
        NewsFeedCard(
          userName: 'Paragatos',
          postContent: 'Nice Owl!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 1',
        ),
        NewsFeedCard(
          userName: 'Paragatos',
          postContent: 'Nice Owl!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 1',
        ),
      ],
    );
  }
}

