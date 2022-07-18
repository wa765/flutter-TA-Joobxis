import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class BannerDetail extends StatelessWidget {
  //
  final String roleJob;
  final String companyJob;
  final String imageURL;
  final String salary;
  final String place;
  final Color cardColor;
  final String workTitle;
  final String statusWork;
  final String statusProffesional;

  //
  const BannerDetail({
    Key? key,
    required this.roleJob,
    required this.companyJob,
    required this.imageURL,
    required this.salary,
    required this.place,
    required this.cardColor,
    required this.workTitle,
    this.statusWork = "Full Time",
    this.statusProffesional = "Senior",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.2,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg_card.png"),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_back_white.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.14,
                      decoration: BoxDecoration(
                          color: kWhiteColor, shape: BoxShape.circle),
                      child: Image.asset(
                        imageURL,
                        scale: 2,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.bookmark,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  roleJob,
                  style: whiteTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  companyJob,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                    color: kWhiteColor.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 1
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: MediaQuery.of(context).size.width * 0.20,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Center(
                          child: Text(
                            workTitle,
                            style: blackTextStyle.copyWith(
                                color: kWhiteColor, fontWeight: medium),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(35)),
                      ),
                      // 2
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: MediaQuery.of(context).size.width * 0.24,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Center(
                          child: Text(
                            statusWork,
                            style: blackTextStyle.copyWith(
                                color: kWhiteColor, fontWeight: medium),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(35)),
                      ),
                      // 3
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: MediaQuery.of(context).size.width * 0.20,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Center(
                          child: Text(
                            statusProffesional,
                            style: blackTextStyle.copyWith(
                                color: kWhiteColor, fontWeight: medium),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(35)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        salary,
                        style: whiteTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                      Text(
                        place,
                        style: whiteTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
