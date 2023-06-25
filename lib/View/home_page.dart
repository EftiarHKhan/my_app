import 'package:flutter/material.dart';
import 'package:my_app/Widgets/Bar/side_menu_bar.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My App",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 30.0,
          ),
        ),
      ),
      drawer: const SideMenuBar(),
    );
  }
}
