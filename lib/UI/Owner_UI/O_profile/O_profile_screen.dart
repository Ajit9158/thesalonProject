
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:salon/UI/Owner_UI/O_Home_Page.dart';
import 'package:salon/UI/profile/User_update_screen.dart';

import '../../../services/createshop.dart';
import '../Shop_Profile/Shop_profile_screen.dart';

import 'O_menu.dart';
import 'O_update_screen.dart';
class OwnerProfileScreen extends StatelessWidget {
  const OwnerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
        actions: [IconButton(onPressed: () {}, icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(

            child: Column(
              children: [

                /// -- IMAGE
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/AppLogo.jpg'),
                      )
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color:Colors.indigo ),
                        child: const Icon(
                          LineAwesomeIcons.alternate_pencil,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text('Ajit Jadhav', style: Theme.of(context).textTheme.headline4),
                Text('Owner', style: Theme.of(context).textTheme.bodyText2),
                const SizedBox(height: 20),

                /// -- BUTTON
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const UpdateOwnerProfileScreen()),
                    );
                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:Color(0xff201d43), side: BorderSide.none, shape: const StadiumBorder()),
                    child: const Text('Edit Prifile', style: TextStyle(color:  Colors.white)),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 10),
                OwnerProfileMenuWidget(title: "Shop profile", icon: LineAwesomeIcons.info, onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShopProfileScreen()),
                  );

                }),

                /// -- MENU
                OwnerProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: () {}),
                OwnerProfileMenuWidget(title: "History", icon: LineAwesomeIcons.wallet, onPress: () {
                }),
                const Divider(),
                const SizedBox(height: 10),
                OwnerProfileMenuWidget(title: "Help", icon: LineAwesomeIcons.helping_hands, onPress: () {}),
                OwnerProfileMenuWidget(
                    title: "Logout",
                    icon: LineAwesomeIcons.alternate_sign_out,
                    textColor: Colors.red,
                    endIcon: false,
                    onPress: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

