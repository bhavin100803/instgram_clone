import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    "assets/instagram_profile/1.jpeg",
    "assets/instagram_profile/2.jpeg",
    "assets/instagram_profile/3.jpeg",
    "assets/instagram_profile/4.jpeg",
    "assets/instagram_profile/5.jpeg",
    "assets/instagram_profile/6.jpeg",
    "assets/instagram_profile/7.jpeg",
    "assets/instagram_profile/8.jpeg",
    "assets/instagram_profile/6.jpeg",
  ];
  List<String> profileName = [
    "Profile 1",
    "Profile 2",
    "Profile 3",
    "Profile 4",
    "Profile 5",
    "Profile 6",
    "Profile 7",
    "Profile 8",
    "Profile 9",
  ];
  List<String> post = [
    "assets/instagram_post/post_4.png",
    "assets/instagram_post/post_5.png",
    "assets/instagram_post/post_6.png",
    "assets/instagram_post/post_7.png",
    "assets/instagram_post/post_8.png",
    "assets/instagram_post/post_9.png",
    "assets/instagram_post/post_10.png",
    "assets/instagram_post/post_11.png",
    "assets/instagram_post/post_12.png",
  ];
  Future<void> onRefresh()async{
await Future.delayed(Duration(seconds: 1));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/logo/instagram_logo_text.png",
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //   Story
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      profileImage.length,
                      (index) => Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/logo/circle_image.png"),
                                  radius: 40,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 37,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          profileImage[index]), //NetworkImage
                                      radius: 35,
                                    ), //CircleAvatar
                                  ), //CircleAvatar
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  profileName[index],
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Divider(),
              Column(
                  children: List.generate(
                      profileImage.length,
                      (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/logo/circle_image.png"),
                                      radius: 14,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 11,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              profileImage[index]), //NetworkImage
                                          radius: 12,
                                        ), //CircleAvatar
                                      ), //CircleAvatar
                                    ),
                                  ),
                                  Text("Profile name"),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert))
                                ],
                              ),
                              // Image Row
                              Image.asset(post[index]),
                              //   Footer post
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_border)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.chat_bubble_outline)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.label_outlined)),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.bookmark_border)),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                            TextSpan(text: "Liked by"),
                                            TextSpan(
                                                text: "Profile Name",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold)),
                                            TextSpan(text: " and"),
                                            TextSpan(
                                                text: " others",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold)),
                                          ]
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                            TextSpan(
                                                text: "Profile Name",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold)),
                                            TextSpan(text: " This is the most amazing picture in the instagram. this is also the best cursor ever made!"),
                                          ]
                                      ),
                                    ),
                                    Text("view all 12 comments",style: TextStyle(color: Colors.black38),)
                                  ],
                                ),
                              )
                            ],
                          )))
            ],
          ),
        ),
      ),
    );
  }
}

// FavoriteButton(
// isFavorite: false,
// iconSize: 48,
// valueChanged: (_isFavorite){
//
// })
