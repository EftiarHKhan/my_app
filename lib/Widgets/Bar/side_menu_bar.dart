import 'package:flutter/material.dart';

import '../image_strings.dart';
import '../text_strings.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
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
            height: 50,
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
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              tProtfoliobar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              tProtfoliobar,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}