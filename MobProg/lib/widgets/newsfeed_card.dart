import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes = 0,
    this.hasImage = false,
  });

  @override
  State<NewsFeedCard> createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  bool _isLiked = false;

  Widget _likeButton() {
    final Color color = _isLiked ? Colors.blueAccent : FB_DARK_PRIMARY;

    return TextButton.icon(
      onPressed: () {
        setState(() {
          _isLiked = !_isLiked;
        });
      },
      icon: Icon(
        _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
        color: color,
      ),
      label: CustomText(
        text: '${widget.numOfLikes}',
        fontSize: ScreenUtil().setSp(12),
        color: color,
        fontWeight: _isLiked ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  Widget _commentButton() {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.comment, color: FB_DARK_PRIMARY),
      label: CustomText(
        text: 'Comment',
        fontSize: ScreenUtil().setSp(12),
        color: FB_DARK_PRIMARY,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(16),
                  backgroundImage: const AssetImage('assets/images/Liybie.png'),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: widget.userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: widget.date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Post Content
            CustomText(
              text: widget.postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Optional Image
            if (widget.hasImage)
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
                  child: Image.asset(
                    'assets/images/owl.jpg',
                    width: double.infinity,
                    height: ScreenUtil().setHeight(180),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _likeButton(),
                _commentButton(),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.redo, color: FB_DARK_PRIMARY),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),

            // Comment Input Placeholder
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(12),
                  backgroundImage: const AssetImage('assets/images/Liybie.png'),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setSp(10)),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(25),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setSp(10),
                      ),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}