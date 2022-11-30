
import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';


class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: gap_m),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         _buildPopularTitle(),
         _buildPopularList(),
       ],
      ),
    );
  }
  Widget _buildPopularTitle(){
    return Row(
      children: [
        Text("게스트 후기", style: h5(),),
        SizedBox(width: 10,),
        Text("평점 4.7/5", style: body1(),),
        Spacer(),
        Text("더보기", style: body1(),)
      ],
    );
  }

  Widget _buildPopularList(){
    return Wrap(    // Wrap은 공간이 충분하지 않은 경우에 남은 위젯이 교차축으로 정렬된다.
      children: [
        HomeBodyPopularItem(id : 0),
        SizedBox(width: 7.5,),
        HomeBodyPopularItem(id : 1),
        SizedBox(width: 7.5,),
        HomeBodyPopularItem(id : 2),
      ],
    );
  }

}
