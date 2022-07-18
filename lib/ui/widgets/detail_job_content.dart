import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailJobContent extends StatefulWidget {
  const DetailJobContent({Key? key}) : super(key: key);

  @override
  State<DetailJobContent> createState() => _DetailJobContentState();
}

class _DetailJobContentState extends State<DetailJobContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32, right: 24, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Description",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Requiretment",
                    style: grayTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "About",
                    style: grayTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "We are the teams who create all of Facebook's products used by billions of people around the world. Want to build new features and improve existing products like Messenger, Video, Groups, News Feed, Search and more?\nResponsibilities:\nFull stack web/mobile application development with a variety of coding languages Create consumer products and features using internal programming language Hack Implement web or mobile interfaces using XHTML, CSS, and JavaScript",
            style: grayTextStyle,
          ),
        ],
      ),
    );
  }
}
