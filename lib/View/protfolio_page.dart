import 'package:flutter/material.dart';



class ProtfolioPage extends StatefulWidget {
  const ProtfolioPage({Key? key}) : super(key: key);

  @override
  State<ProtfolioPage> createState() => _ProtfolioPageState();
}

class _ProtfolioPageState extends State<ProtfolioPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "My Protfolio",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                "My Protfolio",
              ),
            ),
            ListTile(
              title: const Text(
                "Home",
              ),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text(
                "About"
              ),
              onTap: (){},
            )
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hey There,",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      "I'm Eftiar,",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      "I have a passion for creating user friendly mobile application",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 20.0,),
                  ],
                ),


                Image.asset('images/Logo.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
