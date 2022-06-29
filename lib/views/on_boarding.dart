import 'package:flutter/material.dart';
import 'package:task1/Models/page_view_body_model.dart';
import 'package:task1/components/on_boarding_page_view_body.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController onBoardingPageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Skip')),
          PageView.builder(
            controller: onBoardingPageViewController,
            itemBuilder: (BuildContext context, int index) { return OnBoardingPageViewBody(pageViewBodyModel: pages[index]); },

          ),
        ],
      ),
    );
  }
}
