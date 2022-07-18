import 'package:findjob/shared/theme.dart';
import 'package:findjob/ui/widgets/banner_detail_job.dart';
import 'package:findjob/ui/widgets/detail_job_content.dart';
import 'package:flutter/material.dart';

class DetailJob extends StatelessWidget {
  const DetailJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Widget DetailJobPages() {
      return BannerDetail(
        roleJob: "Node.js Developer",
        companyJob: "Crisp Studio",
        imageURL: "assets/crisp_studio.jpg",
        salary: "\$500 / month",
        place: "Bandung , Indonesia",
        cardColor: kPrimaryColor,
        workTitle: "Coding",
        statusWork: "Full Time",
        statusProffesional: "Senior",
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [DetailJobPages(), DetailJobContent()],
        ),
      ),
    );
  }
}
