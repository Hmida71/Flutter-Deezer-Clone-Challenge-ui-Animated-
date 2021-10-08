import 'package:deezer_music_clone/global.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  I_ndexState createState() => I_ndexState();
}

class I_ndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return SlidingUpPanel(
      onPanelOpened: () {
        setState(() {
          panelOpen = true;
        });
      },
      onPanelClosed: () {
        setState(() {
          panelOpen = false;
        });
      },
      onPanelSlide: (val) {
        print("$val");
      },
      panel: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.indigoAccent],
            ),
          ),
          width: wid,
          height: 700,
          child: Column(
            children: [
              panelOpen == false
                  ? Center(
                      child: Row(
                      children: const [
                        Expanded(
                          child: ListTile(
                            isThreeLine: false,
                            leading: Icon(
                              Ionicons.play,
                              size: 35,
                            ),
                            title: Text("Whatever You Like"),
                            subtitle: Text("T.I -Paper Trail"),
                          ),
                        ),
                        Icon(Ionicons.heart_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Ionicons.information_circle_outline),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ))
                  : Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Ionicons.chevron_down_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 120,
                              ),
                              Column(
                                children: const [
                                  Text("Mix Inspired by",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                  Text(
                                    "Eminem",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 220,
                            width: wid,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                image: AssetImage("images/eminem.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            margin: const EdgeInsets.only(
                                left: 60, right: 60, top: 30, bottom: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Ionicons.share_social_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Ionicons.ellipsis_vertical_circle_outline,
                                size: 55,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Ionicons.heart_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "1.30",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "3.21",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              children: [
                                Container(
                                  color: Colors.white,
                                  height: 4,
                                  width: 100,
                                ),
                                const CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                Expanded(
                                  child: Container(
                                    color: const Color(0xB9A5A5A5),
                                    height: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 22),
                            child: Column(
                              children: const [
                                Text(
                                  "Whatever You Like",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "T.I -Paper Trail",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Ionicons.play_skip_back_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Ionicons.play,
                                size: 55,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Ionicons.play_skip_forward_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20),
              child: const Text(
                "Your favorite artists",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              height: 150,
              // color: Colors.black,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage("images/billie.jpeg"),
                ),
                SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage("images/eminem.jpeg"),
                ),
                SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.indigoAccent,
                  backgroundImage: AssetImage("images/drake.jpg"),
                ),
                SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage("images/sixnine.jpg"),
                ),
              ]),
            ),
           
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20),
              child: const Text(
                "Made for you",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 180,
                        width: wid,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                            image: AssetImage("images/eminem.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: const EdgeInsets.only(
                            left: 20, top: 30, bottom: 15),
                      ),
                      Container(
                          // color: Colors.red,
                          width: double.infinity,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 24),
                          child: const Text(
                              "this is new album from skils and weget ,rbabla "))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: wid,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                            image: AssetImage("images/billie.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: const EdgeInsets.only(
                            right: 10, top: 30, bottom: 15),
                      ),
                      Container(
                          // color: Colors.red,
                          width: double.infinity,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 18, left: 4),
                          child: const Text(
                              "this is new album from skils and weget ,rbabla "))
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 180,
              width: 165,
              margin: const EdgeInsets.only(left: 24, top: 15),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage("images/sixnine.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                // color: Colors.red,
                width: 165,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 35, top: 5),
                child: const Text(
                    "this is new album from skils and weget ,rbabla ")),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
