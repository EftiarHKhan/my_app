import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_app/View/about_page.dart';
import 'package:my_app/View/contact_page.dart';
import 'package:my_app/View/experience_page.dart';
import 'package:my_app/View/home_page.dart';
import 'package:my_app/View/project_page.dart';
import 'package:my_app/View/protfolio_page.dart';
import 'package:my_app/Widgets/sizes.dart';

import '../image_strings.dart';
import '../text_strings.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              tUserName,
              style: TextStyle(fontSize: tParagraphSize),
            ),
            accountEmail: Text(tEmail),
            currentAccountPicture: ClipOval(
              child: Image(
                image: AssetImage(tProfileImage),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(tBannerImage),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            leading: const Icon(LineAwesomeIcons.home),
            title: const Text(
              tHomebar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => Get.to(() => const HomePage()),
          ),
          ListTile(
            leading: const Icon(LineAwesomeIcons.person_entering_booth),
            title: const Text(
              tProtfoliobar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => Get.to(() => const ProtfolioPage()),
          ),
          ListTile(
            leading: const Icon(LineAwesomeIcons.cog),
            title: const Text(
              tProjectbar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => Get.to(() => const ProjectPage()),
          ),
          ListTile(
            leading: const Icon(LineAwesomeIcons.percent),
            title: const Text(
              tExpericenbar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => Get.to(() => const ExperiencePage()),
          ),
          ListTile(
            leading: const Icon(LineAwesomeIcons.phone),
            title: const Text(
              tContactbar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => Get.to(() => const ContactPage()),
          ),
          ListTile(
            leading: const Icon(LineAwesomeIcons.person_entering_booth),
            title: const Text(
              tAboutbar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => Get.to(() => const AboutPage()),
          ),
        ],
      ),
    );
  }
}
