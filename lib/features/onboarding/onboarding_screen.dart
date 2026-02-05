import 'dart:ui';
import 'package:project2/imports.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: AppImages.onboarding1,
      title: "Find Trusted Doctors",
      subTitle:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
    ),
    OnboardingModel(
      image: AppImages.onboarding2,
      title: "Choose Best Doctors",
      subTitle:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
    ),
    OnboardingModel(
      image: AppImages.onboarding3,
      title: "Easy Appointments",
      subTitle:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
    ),
  ];
  final PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: -120,
            right: -80,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor.withOpacity(0.40),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(color: Colors.transparent),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 7,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) =>
                      setState(() => currentIndex = value),
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    final OnboardingModel page = pages[index];
                    return Stack(
                      children: [
                        Positioned(
                          top: -20,
                          left: index.isOdd ? 175 : -104,
                          child: Container(
                            width: 342,
                            height: 342,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Image.asset(page.image),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 43,
                              ),
                              child: Column(
                                children: [
                                  TXT(
                                    page.title,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 28,
                                  ),
                                  TXT(
                                    page.subTitle,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.center,
                                    color: AppColors.text2.withOpacity(0.9),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(43, 20, 43, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FilledButton(
                        onPressed: () {
                          if (currentIndex == pages.length - 1) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (c) => RootNavigation()),
                            );
                          } else {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.bounceInOut,
                            );
                          }
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: TXT(
                          currentIndex == pages.length - 1
                              ? "Get Started"
                              : "Next",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Gap(10),
                      if (currentIndex != pages.length - 1)
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (c) => RootNavigation()),
                            );
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: TXT(
                            "Skip",
                            color: AppColors.text2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
