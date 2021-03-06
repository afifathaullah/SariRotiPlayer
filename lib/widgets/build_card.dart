import 'package:flutter/material.dart';
import 'package:video_app/screens/video_screen.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    Key key,
    this.videoUrl,
    this.thumb,
    this.title,
    this.thumb2,
    this.title2,
    this.videoUrl2,
  }) : super(key: key);

  final String videoUrl;

  final String videoUrl2;
  final String thumb;

  final String thumb2;
  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoScreen(
                    videoUrl: videoUrl,
                    title: title,
                  ),
                ),
              );
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: 150.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffDFEEEA),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(thumb),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white38,
                        offset: Offset(0, 1),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    child: Container(
                  child: Icon(Icons.play_arrow, color: Colors.white),
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black26.withOpacity(0.5),
                  ),
                )),
                Positioned(
                    left: 5.0,
                    bottom: 5.0,
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    )),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoScreen(
                    videoUrl: videoUrl2,
                    title: title,
                  ),
                ),
              );
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: 150.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffDFEEEA),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(thumb2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white38,
                        offset: Offset(0, 1),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    child: Container(
                  child: Icon(Icons.play_arrow, color: Colors.white),
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black26.withOpacity(0.5),
                  ),
                )),
                Positioned(
                    left: 5.0,
                    bottom: 5.0,
                    child: Text(
                      title2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
