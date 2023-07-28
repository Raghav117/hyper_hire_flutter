import 'package:flutter/material.dart';
import 'package:hyper_hire/view/post_detail_page.dart';

import 'components/hashtag_container.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: HashtagContainer(
        title: 'Click here to see the UI here',
        onCta: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PostDetailPage();
          }));
        },
      )),
    );
  }
}
