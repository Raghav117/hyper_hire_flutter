import 'package:flutter/material.dart';

class HashtagContainer extends StatelessWidget {
  HashtagContainer({
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
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color(0xFFCED3DE)),
            color: Color(0xFFF7F8FA)),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 5,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF5A6B87),
          ),
        ),
      ),
    );
  }
}
