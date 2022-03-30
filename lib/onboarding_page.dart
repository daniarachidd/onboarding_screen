import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'homescreen.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'WELCOME TO FOOD VIBE',
          body: 'Enjoy your favorite cuisine at your couch watch your favorite TV Show',
          image: buildImage('assets/onboard1bg.png'),
          decoration: buildDecoration(),
        ),
        PageViewModel(
          title: 'EXTRA FAST DELIVERY',
          body: 'Your food will be delivered quickly to you fresh and hot',
          image: buildImage('assets/onboard2bg.png'),
          decoration: buildDecoration(),
        ),
        PageViewModel(
          title: 'FIND YOUR FAVORITE FOOD',
          body: 'Search for the best restaurant in your area and choose your favorite food ',
          image: buildImage('assets/onboard3bg.png'),
          decoration: buildDecoration(),
        ),
        PageViewModel(
          title: 'ENJOY YOUR MEAL',
          body: 'Enjoy your favorite food within minutes',
          image: buildImage('assets/onboard4bg.png'),
          decoration: buildDecoration(),
        ),
      ],
      next: Icon(Icons.navigate_next, size: 40, color: Colors.red,),
      done: Text('Done', style: TextStyle(color: Colors.red, fontSize: 20)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('Skip', style: TextStyle(color: Colors.red, fontSize: 20),), //by default, skip goes to the last page
      onSkip: () => goToHome(context),
      dotsDecorator: getDotDecoration(),
      animationDuration: 1000,
      globalBackgroundColor: Colors.purple.shade50,
    );
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
      color: Colors.grey,
      size: Size(10,10),
      activeColor: Colors.redAccent,
      activeSize: Size(22,10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      )

  );

  void goToHome(BuildContext context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeScreen()));

  Widget buildImage(String path) => Center(
      child: Image.asset(path)
  );

  PageDecoration buildDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
    bodyTextStyle: TextStyle(fontSize: 20),
    pageColor: Colors.purple.shade50,
    imagePadding: EdgeInsets.all(0),
  );
}
