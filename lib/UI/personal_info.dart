import 'package:flutter/material.dart';


    class Personalinfo extends StatefulWidget {
      const Personalinfo({Key? key}) : super(key: key);

      @override
      State<Personalinfo> createState() => _PersonalinfoState();
    }

    class _PersonalinfoState extends State<Personalinfo> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Personalinfo"),
          ),
          body: Column(
            children: [
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
            ],
          )

        );
      }
    }
