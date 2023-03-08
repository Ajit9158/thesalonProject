import 'package:flutter/material.dart';
import 'package:salon/UI/Login_Screen.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        backgroundColor: Colors.transparent,

        title: Text('Smart Salon',style: TextStyle(color: Colors.black)),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 30,right: 30),
            child: Column
              (
              children: [
                Text('WELCOME IN',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                SizedBox(
                  height: 10,
                ),
                Text('Smart Salon',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple)),
                Container(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/AppLogo.jpg'),

                    ),
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            primary: Colors.purple
                        ),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                          );
                        }, child: Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            primary: Colors.purple
                        ),
                        onPressed: ()
                    {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const LoginScreen()),
                      // );
                    }, child: Text('SignUp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))
                      
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('   New user then',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
                    TextButton(onPressed: (){}, child: Text("SignUp"))
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
