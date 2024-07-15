import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/home_page.dart';
import 'package:insta/search_page.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:currentpage == 1 ? SearchPage() : HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentpage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: currentpage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentpage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: currentpage == 1
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentpage = 2;
                });
              },
              icon: Icon(
                Icons.ondemand_video,
                color: currentpage == 2
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentpage = 3;
                });
              },
              icon: Icon(
                Icons.card_travel,
                color: currentpage == 3
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: (){
                setState(() {
                  currentpage = 4;
                });
              },
              icon: Icon(
                Icons.person,
                color: currentpage == 4
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
