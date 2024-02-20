import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/utils/list.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        title: Row(
          children: [
            Icon(Icons.menu),
            Text("                        Home            "),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/cart');
                  },
                  icon: Icon(Icons.shopping_cart_outlined),
                )),
          ],
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffcfaf75),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/char');
                    },
                    child: Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffcfaf75),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Chair",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/char');
                    },
                    child: Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffcfaf75),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Tabel",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/char');
                    },
                    child: Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffcfaf75),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Sofa",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/char');
                    },
                    child: Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffcfaf75),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Bed",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/char');
                    },
                    child: Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffcfaf75),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Cabat ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/char');
                    },
                    child: Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffcfaf75),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Bed",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Popular product",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Spacer(),
              Text(
                "See More   ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 29,
          ),
          Expanded(
            child: Container(
              height: 1300,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: List.generate(
                            boxdetail1.length,
                            (index) => InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/data',
                                        arguments: boxdetail1[index]);
                                  },
                                  child: productbox1(index),
                                )),
                      ),
                      Column(
                        children: List.generate(
                            boxdetails2.length,
                            (index) => InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/data',
                                        arguments: boxdetails2[index]);
                                  },
                                  child: productbox2(index),
                                )),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget productbox1(index) {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 0, 25),
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
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    boxdetail1[index]['image'],
                    fit: BoxFit.fill,
                  )),
            ),
            Row(
              children: [
                Text(
                  boxdetail1[index]['name'],
                  style: const TextStyle(fontSize: 13),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  boxdetail1[index]['descount'],
                  style: TextStyle(fontSize: 13),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget productbox2(index) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(10, 0, 0, 25),
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
                  child: Image.asset(
                    boxdetails2[index]['image'],
                    fit: BoxFit.fill,
                  )),
            ),
            Row(
              children: [
                Text(
                  boxdetails2[index]['name'],
                  style: const TextStyle(fontSize: 13),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  boxdetails2[index]['descount'],
                  style: TextStyle(fontSize: 13),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
