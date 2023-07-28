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
import '../components/post_content_heading_widget.dart';
import '../components/post_content_widget.dart';

class PostDetailPage extends StatefulWidget {
  PostDetailPage({super.key});

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  List<String> hashTag = [
    '#2023',
    '#TODAYISMONDAY',
    '#TOP',
    '#POPS!',
    '#WOW',
    '#ROW',
  ];

  List<String> imageList = [
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(Svgs.arrow)),
                  Spacer(),
                  Text(
                    '자유톡',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1D232B),
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset(Svgs.off),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: PersonNameBar(
              name: '안녕 나 응애 ',
              sideName: '1일전',
              buttonName: '팔로우',
              height: '165cm',
              weight: '53kg',
              isExpertIcon: true,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PostContentHeadingWidget(
                  heading: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                ),
                SizedBox(
                  height: 16,
                ),
                PostContentWidget(
                  content:
                      '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? 
        후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???
        올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!''',
                ),
                SizedBox(
                  height: 16,
                ),
                HashTagList(hashTag: hashTag),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CarouselSlider(
            items: [
              ...imageList
                  .map((e) => Container(
                      width: double.infinity,
                      child: Image.network(
                        e,
                        fit: BoxFit.cover,
                      )))
                  .toList(),
            ],
            options: CarouselOptions(
                autoPlay: true,
                height: height * .5,
                onPageChanged: (int f, c) {
                  index = f;
                  setState(() {});
                }),
          ),
          Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  ...imageList.map((e) {
                    return Row(
                      children: [
                        Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == imageList.indexOf(e)
                                  ? Color(0xFFFFFFFFF)
                                  : Color(0xFFFFFFFFF).withOpacity(0.5),
                            )),
                        if (imageList.indexOf(e) != imageList.length - 1)
                          const SizedBox(
                            width: 4,
                          )
                      ],
                    );
                  }).toList(),
                  const Spacer(),
                ],
              ),
            ],
          ),
          LikeCommentBar(
            commentCount: 5,
            heartCount: 3,
            isBookMark: true,
            iscomment: true,
            isThreeDots: true,
          ),
          Divider(
            color: Color(0xFFF7F8FA),
            height: 2,
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              children: [
                PersonNameBar(
                  name: '안녕 나 응애 ',
                  sideName: '1일전',
                  isExpertIcon: true,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 36,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PostContentWidget(
                            content:
                                '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭  우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니  꼭 봐주세용~!''',
                          ),
                          LikeCommentBar(
                              horizontalPadding: 0,
                              heartCount: 5,
                              commentCount: 5,
                              iscomment: true,
                              isBookMark: false,
                              isThreeDots: false),
                          PersonNameBar(
                            name: '안녕 나 응애 ',
                            sideName: '1일전',
                            isExpertIcon: false,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 36,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    PostContentWidget(
                                      content:
                                          '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭  우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니  꼭 봐주세용~!''',
                                    ),
                                    LikeCommentBar(
                                        horizontalPadding: 0,
                                        heartCount: 5,
                                        commentCount: 0,
                                        iscomment: false,
                                        isBookMark: false,
                                        isThreeDots: false)
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            constraints: BoxConstraints(
              minHeight: 40,
              maxHeight: 100,
            ),
            width: double.infinity,
            child: Row(
              children: [
                SvgPicture.asset(Svgs.imagesmode),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '댓글을 남겨주세요.',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFAFB9CA),
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text("등록",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF919EB6),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
