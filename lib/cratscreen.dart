import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/utils/list.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:Row(
          children: [
            InkWell(onTap:(){
              Navigator.of(context).pushReplacementNamed('/');
            },
         child: Icon(Icons.arrow_back_ios)),
          Text("                     Cart Data",style: TextStyle(

        ),),
      
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 90,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                   Image.asset(Cartlist[0]['image'],),
                   Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(Cartlist[0]['name'],style: TextStyle(fontSize: 13),),
                       ),
                       Row(
                         children: [
                           Text(
                             'Total price',
                             style: TextStyle(color: Colors.black, fontSize: 15),
                           ),
                           Text(" : 2000"),
                         ],
                       ),
                     ],
                   )
                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 90,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(Cartlist[1]['image'],),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(Cartlist[1]['name'],style: TextStyle(fontSize: 13),),
                        ),
                        Row(
                          children: [
                            Text(
                              'Total price',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Text(" : 2000"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
