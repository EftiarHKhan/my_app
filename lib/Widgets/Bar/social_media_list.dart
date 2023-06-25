import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../image_strings.dart';

class SocialMediaList extends StatelessWidget {
  const SocialMediaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: InkWell(
                onTap: (){},
                child: const SizedBox(
                  height: 40,
                  width: 40,
                  child: Image(image: AssetImage(tFacebookImage),),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: InkWell(
              onTap: (){},
              child: const SizedBox(
                height: 40,
                width: 40,
                child: Image(image: AssetImage(tLinkedinImage),),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: InkWell(
              onTap: (){},
              child: const SizedBox(
                height: 40,
                width: 40,
                child: Image(image: AssetImage(tGithubImage),),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
