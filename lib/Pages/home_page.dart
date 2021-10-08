import 'dart:ui';

import 'package:deezer_music_clone/Pages/favorite.dart';
import 'package:deezer_music_clone/Pages/index.dart';
import 'package:deezer_music_clone/Pages/podcast.dart';
import 'package:deezer_music_clone/Pages/search.dart';
import 'package:deezer_music_clone/global.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
            // color: Colors.red,
            margin: const EdgeInsets.only(top: 10),
            child: Row(
                children: selectedIndex == 0
                    ? const [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Music",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 33),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ]
                    : selectedIndex == 1
                        ? const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Podcast",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 33),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ]
                        : selectedIndex == 3
                            ? const [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 33),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ]
                            : const [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Favorit",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 33),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ])),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.notifications_outline,
                size: 30,
                color: Colors.black87,
              )),
          const SizedBox(
            width: 2,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.settings_outline,
                size: 24,
                color: Colors.black87,
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false, // <-- AND HERE
          elevation: 18,
          items: [
            BottomNavigationBarItem(
              icon: selectedIndex == 0
                  ? IconButton(
                      icon: const Icon(
                        Ionicons.musical_notes_outline,
                        color: Colors.red,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 0;
                          print("$selectedIndex");
                        });
                      },
                    )
                  : IconButton(
                      icon: const Icon(
                        Ionicons.musical_notes,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 0;
                          print("$selectedIndex");
                        });
                      },
                    ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: selectedIndex == 1
                    ? const Icon(
                        Ionicons.mic_outline,
                        color: Colors.red,
                        size: 27,
                      )
                    : const Icon(
                        Ionicons.mic,
                        color: Colors.black,
                        size: 27,
                      ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                    print("$selectedIndex");
                  });
                },
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 2
                  ? IconButton(
                      icon: const Icon(
                        Ionicons.heart_outline,
                        color: Colors.red,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 2;
                          print("$selectedIndex");
                        });
                      },
                    )
                  : IconButton(
                      icon: const Icon(
                        Ionicons.heart,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 2;
                          print("$selectedIndex");
                        });
                      },
                    ),
              label: "Movie",
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 3
                  ? IconButton(
                      icon: const Icon(
                        Ionicons.search_outline,
                        color: Colors.red,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 3;
                          print("$selectedIndex");
                        });
                      },
                    )
                  : IconButton(
                      icon: const Icon(
                        Ionicons.search,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 3;
                          print("$selectedIndex");
                        });
                      },
                    ),
              label: "Shop",
            ),
          ]),
      body: selectedIndex == 0
          ? const Index()
          : selectedIndex == 1
              ? const Podcast()
              : selectedIndex == 2
                  ? const Favorite()
                  : const Search(),
      /* 
       WeSlide(
        controller: _controller,
        panelMinSize: _panelMinSize,
        panelMaxSize: _panelMaxSize,
        animateDuration: const Duration(milliseconds: 600),
        blur: true,
        panelWidth: wid,

        body: Container(
          color: _colorScheme.background,
          child: Center(
            child: MaterialButton(
              onPressed: _controller.show,
              child: const Text("gg"),
            ),
          ),
        ),
        panel: Container(
          color: _colorScheme.primary,
          child: Container(
              height: 500,
              width: wid,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 550,
                    margin: const EdgeInsets.all(12),
                    color: Colors.amber,
                  ),
                  const Text("This is the panel 😊"),
                ],
              )),
        ),
        panelHeader: Container(
          height: 110,
          color: _colorScheme.secondary,
          child: Center(
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
          )),
        ),
      ),
    
    
    */
    );
  }
}
