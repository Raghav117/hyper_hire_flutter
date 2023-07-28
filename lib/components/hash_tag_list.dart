import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_hire/components/hashtag_container.dart';
import 'package:hyper_hire/components/primary_button.dart';
import 'package:hyper_hire/resources/images.dart';
import 'package:hyper_hire/resources/svgs.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HashTagList extends StatelessWidget {
  const HashTagList({
    super.key,
    required this.hashTag,
  });

  final List<String> hashTag;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 8,
      spacing: 8,
      children: [...hashTag.map((e) => HashtagContainer(title: e)).toList()],
    );
  }
}
