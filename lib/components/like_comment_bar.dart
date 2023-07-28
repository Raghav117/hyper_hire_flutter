import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_hire/components/hashtag_container.dart';
import 'package:hyper_hire/components/primary_button.dart';
import 'package:hyper_hire/resources/images.dart';
import 'package:hyper_hire/resources/svgs.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LikeCommentBar extends StatelessWidget {
  const LikeCommentBar({
    super.key,
    required this.heartCount,
    required this.commentCount,
    required this.iscomment,
    required this.isBookMark,
    required this.isThreeDots,
    this.horizontalPadding = 16,
  });

  final int heartCount;
  final int commentCount;
  final bool isBookMark;
  final bool iscomment;
  final bool isThreeDots;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 12),
      child: Row(
        children: [
          SvgPicture.asset(Svgs.heart),
          Text(heartCount.toString(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF919EB6),
              )),
          SizedBox(
            width: 8,
          ),
          if (iscomment) ...[
            SvgPicture.asset(Svgs.comment),
            SizedBox(
              width: 4,
            ),
            Text(commentCount.toString(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF919EB6),
                )),
          ],
          if (isBookMark) ...[
            SizedBox(
              width: 8,
            ),
            SvgPicture.asset(Svgs.bookmark),
          ],
          if (isThreeDots) ...[
            SizedBox(
              width: 8,
            ),
            SvgPicture.asset(Svgs.threedots),
          ]
        ],
      ),
    );
  }
}
