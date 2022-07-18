import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumCard extends StatelessWidget {
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
  final Function() onPressed;
  //

  const CostumCard(
      {Key? key,
      required this.roleJob,
      required this.companyJob,
      required this.imageURL,
      required this.salary,
      required this.place,
      required this.cardColor,
      required this.workTitle,
      this.statusWork = "Full Time",
      this.statusProffesional = "Senior",
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 24, right: 24),
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height * 0.28,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height * 0.28,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/bg_card.png",
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(22),
                        margin: const EdgeInsets.only(right: 16),
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.09,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: Image.asset(
                          imageURL,
                          // width: 50,
                          // height: 40,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            roleJob,
                            style: blackTextStyle.copyWith(
                                color: kWhiteColor,
                                fontSize: 16,
                                fontWeight: semiBold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            companyJob,
                            style: blackTextStyle.copyWith(color: kGrayColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //
                Container(
                  margin:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  child: Row(
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
                  margin: const EdgeInsets.symmetric(horizontal: 24),
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
          ),
        ]),
      ),
    );
  }
}
