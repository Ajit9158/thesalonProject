import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:salon/UI/profile/User_profile_screen.dart';

import 'Shop_Display_pages/one_shop_info.dart';
import 'firstPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        //extendBodyBehindAppBar: true,
        bottomNavigationBar: Container(
          color: Color(0xff201d43),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              gap: 8,
              onTabChange: (value) {
                if(value==3)
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  }
              },
              backgroundColor: Color(0xff201d43),
              color: Colors.white54,
              activeColor:Colors.white ,
              tabBackgroundColor: Colors.grey,
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(icon: Icons.home,
                text: 'Home',),
                GButton(icon: Icons.sort,
                text: 'Sort'),
                GButton(icon: Icons.favorite_border,
                text:'fav'),
                GButton(icon: Icons.account_circle_outlined,
                text:'Profile'),
              ],
            ),
          ),
        ),

        appBar: AppBar(
          backgroundColor: Color(0xff201d43),
          automaticallyImplyLeading: false,
         // elevation: 0,
           title:  Padding(
             padding: const EdgeInsets.only(top: 1,bottom: 1,left: 0.5),
             child: ListTile(
                 minVerticalPadding:15.0,
                leading: InkWell(
                  onTap: ()
                  {
                  },
                  child:  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/AppLogo.jpg'),
                  ) ,
                ),
                title:Text('SmartSALON',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white) ),
                subtitle: Text("dsdd",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                trailing: Text('asda  f',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),


              ),
           )
        ),
       body:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  //margin: EdgeInsets.only(left: 30,right: 30),
                  width: double.infinity,
                  child: TextField(

                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2

                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.grey
                          )

                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(itemBuilder: (context,index)
                  {
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ShopInfo()),
                        );
                      },
                      child: ListTile(
                        leading:Container(
                          height: 60,
                          width: 60,

                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                width: 2,


                              )
                          ),
                        ),
                        title:Text('Shop Name' ),
                        subtitle: Text('Location'),
                        trailing: Text('Status'),


                      ),
                    );

                  },
                    itemCount: 20,
                    separatorBuilder: (context,index){
                      return Divider(height: 50,thickness: 10,);
                    },
                  ),
                ),
              )

            ],
          ),


      ),
    );
  }
}
