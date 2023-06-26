import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Widgets/image_strings.dart';

class AddProject extends StatelessWidget {
  const AddProject({
    Key? key,
    required this.title,
    required this.shortTitle,
    required this.image,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final String shortTitle;
  final VoidCallback onPress;
  final ImageIcon image;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(addProject.length, (index) {
        return Center(
            child: SelectProject(addProject: addProject[index]),
            );
      }),
    );
  }
}

class SelectProject extends StatelessWidget {
  const SelectProject({Key? key, required this.addProject}) : super(key: key);
  final AddProject addProject;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: addProject.image,
                ),
                Text(
                  addProject.title
                ),
                Text(
                  addProject.shortTitle
                )
              ]),
        ));
  }
}

List<AddProject> addProject = <AddProject>[
  AddProject(
    title: 'Tell Bro',
    shortTitle: "Mobile application",
    image: const ImageIcon(AssetImage(tProfileImage)),
    onPress: () {},
  ),
  AddProject(
    title: 'My App',
    shortTitle: "Mobile application",
    image: const ImageIcon(AssetImage(tProfileImage)),
    onPress: () {},
  )
];
