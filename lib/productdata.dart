import 'package:flutter/material.dart';
import 'package:plantapp/utils/list.dart';


class char extends StatefulWidget {
  const char({super.key});

  @override
  State<char> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<char> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                  height: 32,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/');
                      },
                      child: Icon(Icons.arrow_back_ios_new_rounded,size: 16,))),
              SizedBox(width: 15,),
              Text(
                filter?[0]['name'],

                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          backgroundColor: Color(0xffcfaf75),
        ),

        body: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                children: List.generate(boxdetail1!.length, (index) => product(index)),
              ),
              Column(
                children: List.generate(boxdetails2!.length, (index) => product2(index)),
              ),
            ],
          ),

        )
    );
  }
}

Widget product(index)
{
  return Container(
    margin: EdgeInsets.fromLTRB(35, 20, 0,25),
    height: 200,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(productbox[index]['image'],fit:BoxFit.fill,)),
        ),
        Row(
          children: [
            Text(boxdetail1?[index]['name'],style: TextStyle(fontSize: 13),),
          ],
        ),
        Row(
          children: [
            Text(productbox2[index]['discount'],style: TextStyle(fontSize: 13),),
            Spacer(),

          ],
        ),
      ],
    ),
  );

}

Widget product2(index)
{
  return Container(
    margin: EdgeInsets.fromLTRB(35, 20, 0,25),
    height: 200,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(productbox2[index]['image'],fit:BoxFit.fill,)),
        ),
        Row(
          children: [
            Text(boxdetails2?[index]['name'],style: TextStyle(fontSize: 13),),
          ],
        ),
        Row(
          children: [
            Text(productbox2?[index]['discount'],style: TextStyle(fontSize: 13),),
            Spacer(),

          ],
        ),
      ],
    ),
  );

}