import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../Model/choice_project.dart';
import '../Widgets/Bar/home_app_bar.dart';
import '../Widgets/Bar/side_menu_bar.dart';
import '../Widgets/colors.dart';
import '../Widgets/image_strings.dart';
import '../Widgets/sizes.dart';
import '../Widgets/text_strings.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
                children: [
                  const Text(
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


class ProjectList extends StatelessWidget {
  const ProjectList({
    Key? key,
    required this.title,
    required this.shotTitle,
    required this.icon,
    required this.onPress,
    this.textColor,


  }) : super(key: key);

  final String title;
  final String shotTitle;
  final IconData icon;
  final VoidCallback onPress;
  final Color? textColor;


  @override
  Widget build(BuildContext context) {

    var isDark= MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? Colors.white: Colors.blueAccent;

    // return GridView.count(crossAxisCount: 3,
    //   children: <Widget>[
    //     //Expanded(child: ImageIcon(imageicon)),
    //     Text(title),
    //     Text(shotTitle),
    //   ],
    // );

    return Expanded(
      child: ListTile(
        onTap: onPress,
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: iconColor.withOpacity(0.1),
          ),
          child: Icon(icon, color: iconColor,),
        ),
        title: Text(title, style: Theme.of(context).textTheme.bodyText1?.apply(color: textColor),),
        trailing: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Icon(LineAwesomeIcons.angle_right, size: 18.0, color: Colors.grey,),
        ),
      ),
    );
  }
}
