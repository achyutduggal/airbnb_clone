import 'package:airbnb_clone/pages/home_page.dart';
import 'package:airbnb_clone/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import '../controller/home_controller.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final homeCon = Get.put<HomeController>(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Stack(
          children: <Widget>[
            PageView.builder(
              itemCount: homeCon.demoData.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                homeCon.setCurrentPage(index);
              },
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: SvgPicture.asset(
                        homeCon.demoData[index].image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      homeCon.demoData[index].title,
                      style: const TextStyle(fontSize: 35),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      homeCon.demoData[index].description,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          homeCon.demoData.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(microseconds: 300),
                            height: 5,
                            width: homeCon.currentPage.value == index ? 15 : 5,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: homeCon.currentPage.value == index
                                  ? Colors.black
                                  : Colors
                                      .grey, // Adjust active and inactive dot colors
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Sign Up',style: TextStyle(
                    color: CupertinoColors.systemGrey,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
