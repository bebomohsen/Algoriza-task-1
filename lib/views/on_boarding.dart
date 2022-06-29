import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1/Models/page_view_body_model.dart';
import 'package:task1/components/on_boarding_page_view_body.dart';
import 'package:task1/views/Login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController onBoardingPageViewController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {
                      onBoardingPageViewController.jumpToPage(2);
                    },
                    child: Text('Skip'))),
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    isLastPage = value == 2;
                  });
                },
                itemCount: 3,
                controller: onBoardingPageViewController,
                itemBuilder: (BuildContext context, int index) {
                  return OnBoardingPageViewBody(
                      pageViewBodyModel: pages[index]);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
                onDotClicked: (index) =>
                    onBoardingPageViewController.animateToPage(index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                controller: onBoardingPageViewController,
                count: 3),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width, 50))),
                onPressed: () {
                  if (isLastPage)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
                  onBoardingPageViewController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                child: Text(
                  !isLastPage ? 'Next' : 'Get Started',
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }
}
