import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

import '../../constants.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = ["p1.jpeg", "p2.jpeg", "p3.jpeg"];

  HomeBodyPopularItem({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    // 아이템은 전체화면의 70%의 1/3사이즈의 -5 크기를 가진다.
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Padding(
      padding: EdgeInsets.only(bottom: gap_x1),
      child: Container(
        // 화면이 줄어들 때 너무 작게 줄어드는 것을 방지하기 위해 최소 제약조건을 잡아준다.
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover,),
        ),
        SizedBox(height: gap_s,)
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(height: gap_s,)
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text("깔끔하고 좋네요 :) 위치도 가깝고 청소 상태도 아주 좋아요 ㅎㅎㅎㅎㅎㅎ 또 방문할게여 ",
        style: body1(), maxLines: 2, overflow: TextOverflow.ellipsis,),
        SizedBox(height: gap_s,)
      ], 
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(width: gap_s,),
        Column(
          children: [
            Text("신주봉", style: subtitle1(),),
            Text("대한민국")
          ],
        )
      ],
    );
  }
}
