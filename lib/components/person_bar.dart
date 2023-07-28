import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_hire/components/hashtag_container.dart';
import 'package:hyper_hire/components/primary_button.dart';
import 'package:hyper_hire/resources/images.dart';
import 'package:hyper_hire/resources/svgs.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PersonNameBar extends StatelessWidget {
  const PersonNameBar({
    super.key,
    required this.name,
    required this.isExpertIcon,
    required this.sideName,
    this.buttonName,
    this.height,
    this.weight,
  });

  final String name;
  final bool isExpertIcon;
  final String sideName;
  final String? buttonName;
  final String? height;
  final String? weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(Images.c),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1D232B),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                if (isExpertIcon) ...[
                  SvgPicture.asset(Svgs.expertIcon),
                  SizedBox(
                    width: 4,
                  ),
                ],
                Text(sideName,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF919EB6),
                    ))
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(height ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF919EB6),
                    )),
                SizedBox(
                  width: 4,
                ),
                if (height != null && weight != null)
                  Text('•',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF919EB6),
                      )),
                SizedBox(
                  width: 4,
                ),
                Text(weight ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF919EB6),
                    ))
              ],
            )
          ],
        ),
        Spacer(),
        if (buttonName != null)
          Center(child: CustomPrimaryButton(title: buttonName ?? '')),
        if (buttonName == null) SvgPicture.asset(Svgs.threedots)
      ],
    );
  }
}
