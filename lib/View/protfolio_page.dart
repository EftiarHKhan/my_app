import 'package:flutter/material.dart';
import 'package:my_app/Widgets/Bar/home_app_bar.dart';
import 'package:my_app/Widgets/Bar/side_menu_bar.dart';
import 'package:my_app/Widgets/colors.dart';
import 'package:my_app/Widgets/sizes.dart';
import 'package:my_app/Widgets/text_strings.dart';

import '../Widgets/image_strings.dart';

class ProtfolioPage extends StatefulWidget {
  const ProtfolioPage({Key? key}) : super(key: key);

  @override
  State<ProtfolioPage> createState() => _ProtfolioPageState();
}

class _ProtfolioPageState extends State<ProtfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(),
      drawer: const SideMenuBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: AssetImage(tBannerImage),
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: const [
                  Text(
                    tProtfolioTitle,
                    style: TextStyle(
                      fontSize: tTitleSize,
                      color: tTitleColor,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    tProtfolioParagraph,
                    style: TextStyle(
                      fontSize: tParagraphSize,
                      color: tParagraphColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
