import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class IndicatorSlider extends StatelessWidget {
  //
  final String title;
  final String description;
  final String imageURL;
  //
  const IndicatorSlider(
      {Key? key,
      required this.title,
      required this.description,
      required this.imageURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 64),
                  child: Image.asset(
                    imageURL,
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 340,
                  ),
                ),
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 28),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 32, left: 32, top: 16),
                  child: Text(
                    description,
                    style: grayTextStyle.copyWith(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// onBoarding Slider
class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //
  int? _currentPage;
  PageController _controller = PageController();
  //
  List pages = [
    const IndicatorSlider(
        title: "Search Job",
        description:
            "Figure out your top five priorities whether\nit is company culture, salary.",
        imageURL: "assets/onboarding_1.png"),
    const IndicatorSlider(
        title: "Browse jobs list",
        description:
            "Our job list include several  industries, so\nyou can find the best job for you.",
        imageURL: "assets/onboarding_2.png"),
    const IndicatorSlider(
        title: "Apply to best jobs",
        description:
            "You can apply to your desirable jobs very\nquickly and easily with ease.",
        imageURL: "assets/onboarding_3.png")
  ];
  //
  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return pages[index];
            },
          ),
          // Indicator
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  pages.length,
                  (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 8,
                      width: (index == _currentPage) ? 30 : 10,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 30,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: (index == _currentPage)
                              ? kPrimaryColor
                              : kGrayColor.withOpacity(0.5)),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
                child: AnimatedContainer(
                  margin: const EdgeInsets.only(
                    right: 24,
                    left: 24,
                  ),
                  duration: Duration(milliseconds: 300),
                  height: 60,
                  alignment: Alignment.center,
                  width: (_currentPage == (pages.length - 1))
                      ? MediaQuery.of(context).size.width
                      : 70,
                  decoration: BoxDecoration(
                      color: (_currentPage == (pages.length - 1))
                          ? kPrimaryColor
                          : kBackgroundColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: (_currentPage == (pages.length - 1))
                      ? GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Explore Now",
                            style: blackTextStyle.copyWith(
                                color: kWhiteColor,
                                fontSize: 16,
                                fontWeight: medium),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Skip",
                            style: grayTextStyle.copyWith(
                                fontSize: 16, fontWeight: medium),
                          ),
                        ),
                ),
              ),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ],
      ),
    );
  }
}
