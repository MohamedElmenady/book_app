import 'package:book_app/core/assets.dart';
import 'package:book_app/core/style.dart';
import 'package:book_app/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateHome();
  }

  void navigateHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 12), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  // ignore: unnecessary_overrides
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(Assets.logo),
          AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, _) {
                return SlideTransition(
                  position: slidingAnimation,
                  child: const Text(
                    'Reed Free Books',
                    textAlign: TextAlign.center,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
