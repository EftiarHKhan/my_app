import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_app/Widgets/image_strings.dart';
import 'package:my_app/Widgets/sizes.dart';
import 'package:my_app/Widgets/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var isDark =MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(tProfile, style: Theme.of(context).textTheme.headline4,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Center(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 220, height: 220,
                        child: ClipRRect( borderRadius: BorderRadius.circular(100),child: Image(image: AssetImage(tProfileImage),)),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Icon(LineAwesomeIcons.alternate_pencil, size: 18.0, color: Colors.grey,),
                        ),
                      )
                    ],
                  ),
                const SizedBox(height: 10,),
                Text("name", style: Theme.of(context).textTheme.headline4,),
                Text("email", style: Theme.of(context).textTheme.bodyText2,),
                const SizedBox(height: 20,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      side: BorderSide.none,
                      shape: StadiumBorder(),
                    ),
                    child: Text(
                      'Edit profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                //Menu
                ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: (){},),
                ProfileMenuWidget(title: "About", icon: LineAwesomeIcons.person_entering_booth, onPress: (){},),

                ProfileMenuWidget(title: "Logout", icon: LineAwesomeIcons.alternate_sign_out, endIcon: false, textColor: Colors.red, onPress: (){},)

              ],
            ),
          ),

        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon= true,
    this.textColor,

  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {

    var isDark= MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? Colors.white: Colors.blueAccent;

    return ListTile(
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
      trailing: endIcon? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Icon(LineAwesomeIcons.angle_right, size: 18.0, color: Colors.grey,),
      ) : null,
    );
  }
}
