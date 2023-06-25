import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/View/profile_page.dart';

import '../image_strings.dart';

HomeAppBar() {
  return AppBar(
    centerTitle: true,
    title: const Text(
      "My App",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
      ),
    ),
    actions: [
      Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200.0),
          child: InkWell(
            onTap: () => Get.to(() => ProfileScreen()),
            child: const SizedBox(
              height: 40,
              width: 40,
              child: Image(image: AssetImage(tProfileImage),),
            ),
          ),
        ),
      ),
    ],
    backgroundColor: Colors.transparent,
  );
}