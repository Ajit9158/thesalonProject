import 'package:flutter/material.dart';
import 'package:salon/UI/OTP_Screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countyCode= TextEditingController();

  @override
  void initState() {
    countyCode.text="+91";
    super.initState();
  }
  var phone =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),

        ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 30,right: 30),
          child: SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Phone Verification',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),
                Text('you need to register your phone before getting started',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10)),
                 height: 55,
                 child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 30,
                        child: TextField(
                          controller: countyCode,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 10
                              
                      ),
                      Text('|',style: TextStyle(fontSize: 35,color: Colors.grey),),
                      Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(border: InputBorder.none,hintText: 'Phone'),

                          )),

                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),

                Container(
                  width: double.infinity,
                  child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          primary: Colors.indigo
                      ),
                      onPressed: ()
                  {
                        print("button pressed");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const OtpScreen()),
                        );

                        },
                     child: Text('Send Code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))

                  ),
                ),
                Container(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){}, child: Text('Edit Phone Number',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)))
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
