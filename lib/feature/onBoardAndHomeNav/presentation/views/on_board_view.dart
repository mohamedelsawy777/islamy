import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy_c14/common/app_asset.dart';
import 'package:islamy_c14/home_screen/home_screen.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "",
          body: "",
          image: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AppAsset.introScreen1,
              fit: BoxFit.cover,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(height: 0),
            bodyTextStyle: TextStyle(height: 0),
            imagePadding: EdgeInsets.zero,
            pageColor: Colors.transparent,
            fullScreen: true,
          ),
        ),
        PageViewModel(
          title: "",
          body: "",
          image: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AppAsset.introScreen2,
              fit: BoxFit.cover,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(height: 0),
            bodyTextStyle: TextStyle(height: 0),
            imagePadding: EdgeInsets.zero,
            pageColor: Colors.transparent,
            fullScreen: true,
          ),
        ),
        PageViewModel(
          title: "",
          body: "",
          image: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AppAsset.introScreen3,
              fit: BoxFit.cover,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(height: 0),
            bodyTextStyle: TextStyle(height: 0),
            imagePadding: EdgeInsets.zero,
            pageColor: Colors.transparent,
            fullScreen: true,
          ),
        ),
        PageViewModel(
          title: "",
          body: "",
          image: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AppAsset.introScreen4,
              fit: BoxFit.cover,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(height: 0),
            bodyTextStyle: TextStyle(height: 0),
            imagePadding: EdgeInsets.zero,
            pageColor: Colors.transparent,
            fullScreen: true,
          ),
        ),
        PageViewModel(
          title: "",
          body: "",
          image: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AppAsset.introScreen5,
              fit: BoxFit.cover,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(height: 0),
            bodyTextStyle: TextStyle(height: 0),
            imagePadding: EdgeInsets.zero,
            pageColor: Colors.transparent,
            fullScreen: true,
          ),
        ),
      ],
      showSkipButton: true,
      skip: const Text(
        "Skip",
        style: TextStyle(color: Color(0xFFB7935F)),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Color(0xFFB7935F),
      ),
      done: const Text(
        "Done",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFB7935F),
        ),
      ),
      onDone: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      onSkip: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: const Color(0xFFB7935F),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home Page")),
    );
  }
}
