import 'package:flutter/material.dart';
import 'package:video_app/widgets/build_card.dart';
import 'package:video_app/widgets/build_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A1D37),
      appBar: AppBar(
        elevation: 10.0,
        shadowColor: Colors.white24,
        brightness: Brightness.dark,
        backgroundColor: Color(0xff0A1D37),
        title: Text(
          "Video Play",
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage("images/logo.png"))),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Favourites",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BuildContainer(
                  title: "Mutu...",
                  thumb: "images/mutu.png",
                  videoUrl: "video/video1.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "Rudra...",
                  thumb: "images/Rudra.png",
                  videoUrl: "video/video.mp4",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Videos",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          BuildCard(
            title: "iphone",
            thumb: "images/Music_App.png",
            videoUrl: "images/iphone_4.mp4",
            title2: "Part-_2...",
            thumb2: "images/Part-_2.png",
            videoUrl2: 'images/Part-_2.mp4',
          ),
        ],
      ),
    );
  }
}
