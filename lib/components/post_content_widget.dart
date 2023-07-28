import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_hire/components/hashtag_container.dart';
import 'package:hyper_hire/components/primary_button.dart';
import 'package:hyper_hire/resources/images.dart';
import 'package:hyper_hire/resources/svgs.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/hash_tag_list.dart';
import '../components/like_comment_bar.dart';
import '../components/person_bar.dart';
import '../components/post_content_widget.dart';

class PostContentWidget extends StatelessWidget {
  const PostContentWidget({
    super.key,
    required this.content,
  });

  final String content;
  @override
  Widget build(BuildContext context) {
    return Text(content,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xFF313B49),
        ));
  }
}
