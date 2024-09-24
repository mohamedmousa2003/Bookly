import 'package:book_app/core/utils/assets_data.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:book_app/features/splash/presentation/view/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const routeName = '/splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedController;

  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    //? go to home view
    navigateToOnboarding();
  }

  @override
  void dispose() {
    super.dispose();
    animatedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AssetsData.splash),
            SlidingText(slidingAnimation: slidingAnimation)
          ],
        ),
      ),
    );
  }

  //? sliding animation
  void initSlidingAnimation() {
    animatedController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animatedController);
    animatedController.forward();
  }

  //? navigateToOnboarding
  void navigateToOnboarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.leftToRight,
          duration: const Duration(milliseconds: 900));
    });
  }
}
