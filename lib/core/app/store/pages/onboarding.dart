import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/pages/onboarding_item_model.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  final Future<void> Function() onboardingCompleted;

  const Onboarding({required this.onboardingCompleted, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        surfaceTintColor: theme.colorScheme.primary,
        centerTitle: true,
        actions: [
          TextButton(
            child: const Text(
              'Skip',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            onPressed: () {
              onboardingCompleted();
              context.go('/');
            },
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,
              controller: controller,
              itemBuilder: (_, i) {
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Column(
                      children: [
                        Text(
                          contents[i].title,
                          style: TextStyle(
                              fontSize: 35,
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        Image.asset(contents[i].image),
                        Text(
                          contents[i].text,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        )
                      ],
                    ),
                  ),
                ]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: SmoothPageIndicator(
              controller: controller,
              count: contents.length,
              effect: ExpandingDotsEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  activeDotColor: theme.colorScheme.secondary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: UniversalButton(
              text: 'CONTINUE',
              press: () {
                if (controller.page == contents.length - 1) {
                  onboardingCompleted();
                  context.go('/');
                }
                controller.nextPage(
                    duration: const Duration(microseconds: 500),
                    curve: Curves.bounceIn);
              },
            ),
          )
        ],
      ),
    );
  }
}
