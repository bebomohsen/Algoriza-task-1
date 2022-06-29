import 'package:flutter/material.dart';
import 'package:task1/Models/page_view_body_model.dart';

class OnBoardingPageViewBody extends StatelessWidget {
  OnBoardingPageViewBody(
      {Key? key,
      required this.pageViewBodyModel,
    })
      : super(key: key);
  final PageViewBodyModel pageViewBodyModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset(pageViewBodyModel.imgUrl)),
        Spacer(),
        Text(
          pageViewBodyModel.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Spacer(),
        Text(
          pageViewBodyModel.subTitle,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
