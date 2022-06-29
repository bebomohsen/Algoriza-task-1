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
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Skip')),
            SizedBox(
              height: 400,
              width: 400,
              child: PageView.builder(
                itemCount: 3,
                controller: onBoardingPageViewController,
                itemBuilder: (BuildContext context, int index) {
                  return OnBoardingPageViewBody(
                      pageViewBodyModel: pages[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
