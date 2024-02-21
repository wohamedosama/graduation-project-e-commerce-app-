import 'package:e_commerce/features/authentication/view/login/login_screen.dart';
import 'package:e_commerce/features/authentication/view/onboarding/widget/circular_button.dart';
import 'package:e_commerce/features/authentication/view/onboarding/widget/on_boarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/view/onboarding/widget/on_boarding_items.dart';
import 'package:e_commerce/features/authentication/view/onboarding/widget/on_boarding_skip.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => OnBoardingScreenState();
}

@override
class OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController pageController = PageController();
  final List<OnBoardingItems> boarding = const [
    OnBoardingItems(
      image: MyImages.onBoardingImage1,
      title: MyTexts.onBoardingTitle1,
      subTitle: MyTexts.onBoardingSubTitle1,
    ),
    OnBoardingItems(
      image: MyImages.onBoardingImage2,
      title: MyTexts.onBoardingTitle2,
      subTitle: MyTexts.onBoardingSubTitle2,
    ),
    OnBoardingItems(
      image: MyImages.onBoardingImage3,
      title: MyTexts.onBoardingTitle3,
      subTitle: MyTexts.onBoardingSubTitle3,
    ),
  ];

  bool isLast = false;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //HorizontalScrollable pages
          PageView.builder(
              onPageChanged: (index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              itemCount: boarding.length,
              controller: pageController,
              itemBuilder: (context, index) {
                return boarding[index];
              }),

          //Skip Button
          OnBoardingSkip(
            text: MyTexts.skip,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginScreen();
              }));
            },
          ),

          ///Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(
            pageController: pageController,
          ),

          //Circular Button
          CircularButton(
            onPressed: () {
              if (isLast) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (route) => false,
                );
              } else {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.fastLinearToSlowEaseIn);
              }
            },
          ),
        ],
      ),
    );
  }
}
