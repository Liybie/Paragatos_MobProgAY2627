import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: ScreenUtil().screenWidth,
        child: const Column(
          children: [
            notif.Notification(
              name: 'Test',
              post: 'Post',
              description: 'Description',
            ),
            Divider(),
          ],
          
        ),
      ),
    );
  }
}