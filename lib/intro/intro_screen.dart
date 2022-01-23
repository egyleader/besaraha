import 'package:besaraha/intro/model/page_decoration.dart';
import 'package:besaraha/intro/model/page_view_model.dart';
import 'package:besaraha/intro/widgets/introduction_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
  pages: [
    PageViewModel(
  title: "Title of first page",
  body: "Here you can write the description of the page, to explain someting...",
  image: const Center(child: Icon(Icons.android)),
  decoration: const PageDecoration(
    titleTextStyle: TextStyle(color: Colors.orange),
    bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
  ),
),
PageViewModel(
  title: "Title of first page",
  body: "Here you can write the description of the page, to explain someting...",
  image: const Center(child: Icon(Icons.android)),
  decoration: const PageDecoration(
    titleTextStyle: TextStyle(color: Colors.orange),
    bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
  ),
),
PageViewModel(
  title: "Title of first page",
  body: "Here you can write the description of the page, to explain someting...",
  image: const Center(child: Icon(Icons.android)),
  decoration: const PageDecoration(
    titleTextStyle: TextStyle(color: Colors.orange),
    bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
  ),
)
  ],
  showNextButton: true,
  next: const Text('التالي'),
  showSkipButton: true,
  skip: const Text('تخطي'),
  showDoneButton: true,
  done: const Text("إبدأ الآن", style: TextStyle(fontWeight: FontWeight.w600)),
  onDone: () {
    // When done button is press
  },
); //Material App
  }
}