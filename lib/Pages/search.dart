import 'package:deezer_music_clone/global.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xFFCACACA)),
          child: Row(
            children: const [
              SizedBox(
                width: 12,
              ),
              Icon(Ionicons.search_outline),
              SizedBox(
                width: 12,
              ),
              Text(
                "Artists,tracks, podcasts... ",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Ionicons.mic_outline),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, left: 20),
          child: const Text(
            "From a sound",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          height: 70,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            image: DecorationImage(
              image: AssetImage("images/song.png"),
              fit: BoxFit.fill,
            ),
          ),
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, left: 20),
          child: const Text(
            "Highlights",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(podcast[2]['img']),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  podcast[2]['title'],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                margin: const EdgeInsets.only(left: 20, top: 30, bottom: 15),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(podcast[3]['img']),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  podcast[3]['title'],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                margin: const EdgeInsets.only(right: 10, top: 30, bottom: 15),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(podcast[0]['img']),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  podcast[0]['title'],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                margin: const EdgeInsets.only(left: 20, top: 30, bottom: 15),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(podcast[1]['img']),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  podcast[1]['title'],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                margin: const EdgeInsets.only(right: 10, top: 30, bottom: 15),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
