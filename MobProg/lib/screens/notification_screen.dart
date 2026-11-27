import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final notifications = const [
    {
      'name': 'Kert Xhander Idian',
      'post': 'Nasa Japan ako pre',
      'description': 'Liked your photo and left a comment.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Weekend Hike at Mt. Pulag',
      'description': 'Tagged you in 3 new photos.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Flutter UI Tips',
      'description': 'Shared your post with their followers.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Homemade Ramen Recipe',
      'description': 'Commented: "Trying this tonight!"',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Desk Setup 2026',
      'description': 'Reacted to your post.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Beach Trip Highlights',
      'description': 'Mentioned you in a comment.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'New Guitar Cover',
      'description': 'Uploaded a new video you might like.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Book Recommendations',
      'description': 'Replied to your comment.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'City Night Photography',
      'description': 'Liked your comment.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Sunday Meal Prep',
      'description': 'Saved your post to their collection.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': '5K Run Milestone',
      'description': 'Congratulated you on your recent post.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Minimalist Wallpaper Pack',
      'description': 'Shared a link in your thread.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Indie Game Devlog #4',
      'description': 'Posted an update you follow.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Art Sketchbook Tour',
      'description': 'Started following your updates.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Quick Pasta Dinner',
      'description': 'Commented: "Looks delicious!"',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Travel Packing Checklist',
      'description': 'Bookmarked your post.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Mechanical Keyboard Build',
      'description': 'Replied to your question.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Indoor Plant Care',
      'description': 'Tagged you in a comment.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Late Night Coding Session',
      'description': 'Reacted to your update.',
    },
    {
      'name': 'Kert Xhander Idian',
      'post': 'Sunset at Manila Bay',
      'description': 'Liked your post.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: ScreenUtil().screenWidth,
        child: ListView.separated(
          itemCount: notifications.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final item = notifications[index];
            return notif.Notification(
              name: item['name']!,
              post: item['post']!,
              description: item['description']!,
            );
          },
        ),
      ),
    );
  }
}