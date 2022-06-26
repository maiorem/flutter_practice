import 'package:flutter/material.dart';

// Stateful 위젯
class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key) {
    print('Widget Constructor 실행!!');
  }

  @override
  State<StatefulWidget> createState() {
    print('createState 실행!!!!');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  int number = 0;

  @override
  void initState() {
    print('initState 실행!!!!');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies 실행!!!!');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print('deactivate 실행!!!!');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose 실행!!!!');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('didUpdateWidget 실행!!!!');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {

    print('build 실행!!!');
    return GestureDetector(
      onTap: () {
        setState(() {
          number++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color, //Stateful widget에서 값을 가져 올 수 있음
        child: Center(
          child: Text(number.toString()),
        ),
      ),
    );
  }

}

// Stateless 위젯
class _HomeScreen extends StatelessWidget {
  final Color color;

  const _HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }
}