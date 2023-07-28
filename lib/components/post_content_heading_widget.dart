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

class PostContentHeadingWidget extends StatelessWidget {
  const PostContentHeadingWidget({
    super.key,
    required this.heading,
  });

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(heading,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color(0xFF1D232B),
        ));
  }
}
