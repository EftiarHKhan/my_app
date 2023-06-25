import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_app/Widgets/Bar/home_app_bar.dart';
import 'package:my_app/Widgets/Bar/side_menu_bar.dart';
import 'package:my_app/Widgets/Bar/social_media_list.dart';
import 'package:my_app/Widgets/image_strings.dart';
import 'package:my_app/Widgets/text_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      drawer: const SideMenuBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  tWelcomeMessage,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 40.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    tWelcomeMessage2 + tUserName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  child: const Image(image: AssetImage(tProfileImage)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      tDownloadCV,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                const SocialMediaList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
