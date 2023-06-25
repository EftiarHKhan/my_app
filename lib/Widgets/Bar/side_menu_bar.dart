import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/View/home_page.dart';
import 'package:my_app/View/protfolio_page.dart';

import '../image_strings.dart';
import '../text_strings.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 20,),
            SizedBox(
              width: 70,
              height: 70,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage(tProfileImage),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            DrawerHeader(
              child: Text(
                tUserName,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ListTile(
              title: const Text(
                tHomebar,
                style: TextStyle(fontSize: 20),
              ),
              onTap: () => Get.to(()=> const HomePage()),
            ),
            ListTile(
              title: const Text(
                tProtfoliobar,
                style: TextStyle(fontSize: 20),
              ),
              onTap: ()  => Get.to(()=> const ProtfolioPage()),
            ),
            ListTile(
              title: const Text(
                tProjectbar,
                style: TextStyle(fontSize: 20),
              ),
              onTap: ()  => Get.to(()=> const HomePage()),
            ),
            ListTile(
              title: const Text(
                tExpericenbar,
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                tContactbar,
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                tAboutbar,
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
