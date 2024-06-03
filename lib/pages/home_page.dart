import 'package:airbnb_clone/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';
import '../widgets/city_widgets.dart';
import '../widgets/fade_app_bar.dart';
import '../widgets/header.dart';
import '../widgets/hero_banner.dart';
import '../widgets/live_anywhere_widgets.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  late ScrollController _scrollController;
  double _scrollControllerOffset = 0.0;

  /// _scrollListener() is a function that sets the state of the _scrollControllerOffset variable to the
  /// current offset of the scroll controller
  void _scrollListener() {
    setState(() {
      _scrollControllerOffset = _scrollController.offset;
    });
  }

  /// > The initState() function is called when the widget is first created
  @override
  void initState() {
    /// Creating a scroll controller and adding a listener to it.
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarFb5(),
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: const [
              HeroBanner(),
              Header("Explore Nearby"),
              CitiesGrid(),
              Header("Live Anywhere"),
              LiveAnywhereList(),
            ],
          ),
          FadeAppBar(scrollOffset: _scrollControllerOffset),
        ],
      ),
    );
  }
}
