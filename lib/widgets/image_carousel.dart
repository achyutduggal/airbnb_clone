import 'dart:async';
import 'package:flutter/material.dart';

class CarouselDemo extends StatefulWidget {
  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  final PageController _controller = PageController();
  final List<String> _imgList = [
    'https://mamalovesitaly.com/wp-content/uploads/2021/03/amalfi-spring.jpg',
    'https://wallpaperbat.com/img/26188-an-expert-guide-to-a-weekend-in-tuscany.jpg',
    'https://i.pinimg.com/originals/4e/02/91/4e0291201a39affe12f858cea8b0127b.jpg',
    'https://fthmb.tqn.com/GirVicS32_qWnt-P2ZIKW55Lq9w=/1500x1164/filters:fill(auto,1)/GettyImages-648838107-593e02be5f9b58d58a51db1f.jpg',

  ];
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < _imgList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_controller.hasClients) {
        _controller.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView.builder(
        controller: _controller,
        itemCount: _imgList.length,
        itemBuilder: (context, index) {
          return Image.network(
            _imgList[index],
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          );
        },
      ),
    );
  }
}