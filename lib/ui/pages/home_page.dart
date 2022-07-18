import 'package:findjob/shared/theme.dart';
import 'package:findjob/ui/widgets/costum_card_horizontal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Header Widget
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: grayTextStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "John Lucas 👋",
                  style: blackTextStyle.copyWith(
                      fontSize: 22, fontWeight: semiBold),
                )
              ],
            ),
            Container(
              width: 56,
              height: 56,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/profile.png"),
                ),
              ),
            )
          ],
        ),
      );
    }

    // Widget Search
    Widget Search() {
      return Container(
        margin: const EdgeInsets.only(top: 32),
        height: MediaQuery.of(context).size.height * 0.08,
        child: TextFormField(
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            prefixIcon: Container(
              padding: const EdgeInsets.all(12),
              child: Icon(
                Icons.search,
                size: 32,
                color: kGrayColor,
              ),
            ),
            hintText: "Search Job Position",
            hintStyle: TextStyle(fontSize: 16.0, color: kGrayColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: kPrimaryColor),
            ),
          ),
        ),
      );
    }

    // Title
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured Job",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "See All",
                style: grayTextStyle.copyWith(),
              ),
            ),
          ],
        ),
      );
    }

    // Widget Card
    Widget CostumCardHorizontal() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CostumCard(
              roleJob: "Node.js Developer",
              companyJob: "Crisp Studio",
              imageURL: "assets/crisp_studio.png",
              salary: "\$500 / month",
              place: "Bandung , Indonesia",
              cardColor: kPrimaryColor,
              workTitle: "Coding",
              statusWork: "Full Time",
              statusProffesional: "Senior",
              onPressed: () {
                Navigator.pushNamed(context, 'Detail_Job');
              },
            ),
            CostumCard(
              roleJob: "UI / UX Designer",
              companyJob: "Facebook",
              imageURL: "assets/google.png",
              salary: "160.00 / year",
              place: "Wasingthon , USA",
              cardColor: kBlackColor,
              workTitle: "Design",
              statusWork: "Part Time",
              statusProffesional: "Senior",
              onPressed: () {
                Navigator.pushNamed(context, 'Detail_Job');
              },
            ),
            CostumCard(
              roleJob: "UI / UX Designer",
              companyJob: "Facebook",
              imageURL: "assets/google.png",
              salary: "160.00 / year",
              place: "Wasingthon , USA",
              cardColor: Color.fromARGB(255, 11, 114, 199),
              workTitle: "Design",
              statusWork: "Part Time",
              statusProffesional: "Senior",
              onPressed: () {
                Navigator.pushNamed(context, 'Detail_Job');
              },
            ),
          ],
        ),
      );
    }

    //
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                Search(),
                title(),
                CostumCardHorizontal(),
                title(),
                CostumCardHorizontal(),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
