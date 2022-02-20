import 'package:besaraha/intro/model/page_decoration.dart';
import 'package:besaraha/intro/model/page_view_model.dart';
import 'package:besaraha/intro/widgets/dots_decorator.dart';
import 'package:besaraha/intro/widgets/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageDecoration _pageDecoration = PageDecoration(
      imagePadding: const EdgeInsets.only(top: 100.0),
      titlePadding: const EdgeInsets.only(top: 100, bottom: 25.0),
      descriptionPadding: const EdgeInsets.symmetric(horizontal: 25.0),
      titleTextStyle: Theme.of(context).textTheme.headline1!,
      bodyTextStyle: Theme.of(context).textTheme.bodyText1!,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "بصراحة",
            body: "من اكثر الاشياء التي تساعد في تطوير \nالعلاقات الانسانية وحل المشكلات هي \nالحديث عن ما في داخلك بصراحة",
            image: SvgPicture.asset('assets/intro/1.svg'),
            decoration: _pageDecoration),
        PageViewModel(
            title: "",
            body:
                "ولهذا انشأنا تطبيق بصراحة لكي تتحدث عما بداخلك بسرية وبدون تحمل اي عبء نفسي وكذلك معرفة رأي الآخرين بك بحرية",
            image: SvgPicture.asset('assets/intro/2.svg'),
            decoration: _pageDecoration),
        PageViewModel(
            title: "",
            body: "سجل حسابك الآن وإبدأ التواصل بصراحة",
            image: SvgPicture.asset('assets/intro/3.svg'),
            decoration: _pageDecoration)
      ],
      showNextButton: true,
      next: 'التــــالــــي',
      showDoneButton: true,
      done: "إبدأ الآن",
      onDone: () {
        // When done button is press
      },
      dotsDecorator: DotsDecorator(
        color: Theme.of(context).primaryColor,
        activeColor: Theme.of(context).primaryColor,
        size: const Size(6.0, 6.0),
        activeSize: const Size(12.0, 12.0),
      ),
      rtl: true,
    ); //Material App
  }
}
