import 'package:flutter/material.dart';

import '../Widgets/Bar/home_app_bar.dart';
import '../Widgets/Bar/side_menu_bar.dart';
import '../Widgets/colors.dart';
import '../Widgets/image_strings.dart';
import '../Widgets/sizes.dart';
import '../Widgets/text_strings.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
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
                  //AddProject(title: "Tell Bro", shortTitle: "Mobile App", image: ImageIcon(AssetImage(tProfileImage)), onPress: (){})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
