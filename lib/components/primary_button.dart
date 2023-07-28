import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  CustomPrimaryButton({
    super.key,
    required this.title,
    this.onCta,
  });
  final String title;
  VoidCallback? onCta;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCta,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xFF01B99F)),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Color(0XFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
