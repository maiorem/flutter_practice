import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // height: MediaQuery.of(context).size.width,
          child: Column(
            // MainAxisAlignment - 주축 정렬
            // start - 시작
            // end - 끝
            // center - 가운데
            // spaceBetween - 위젯과 위젯이 끝과 끝, 그 사이가 동일하게 배치
            // spaceEvenly - 끝과 끝을 빈 간격으로 시작하고 그 사이에 위젯을 동일하게 배치
            // spaceAround - space Evenly + 끝과 끝의 간격은 1/2
            mainAxisAlignment: MainAxisAlignment.start,
            // CrossAxisAlignment - 반대축 정렬
            // stretch : 최대한으로 늘린다
            crossAxisAlignment: CrossAxisAlignment.start,
            // MainAxisSize - 주축의 크기
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded : 최대한으로 남아있는 사이즈를 모두 차지하기
              // Expanded끼리 나눠먹음
              Expanded(
                flex: 2, // 나머지 공간을 나눠먹는 비율
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              // Flexible : width와 height를 지키고 나머지를 주축 배경으로 채움(버림)
              Flexible(
                flex: 2, // 버리는 공간 비율
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
