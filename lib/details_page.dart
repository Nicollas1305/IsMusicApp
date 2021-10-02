import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsPage extends StatefulWidget {
  static const RouteName = '/DetailsPage';

  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: const [
          Icon(
            Icons.playlist_add_rounded,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.share_outlined,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.more_horiz_outlined,
            size: 30,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.blue,
                      Colors.deepOrange,
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Nome do artista",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Nome da Música",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("32323 Likes  |  "),
                        Text("567 Deslikes   |  "),
                        Text("4234 Plays"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                    ),
                    Slider(
                        min: 0,
                        max: 5,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            FontAwesomeIcons.random,
                            size: 30,
                          ),
                          Icon(
                            FontAwesomeIcons.fastBackward,
                            size: 30,
                          ),
                          Icon(
                            FontAwesomeIcons.solidPauseCircle,
                            size: 70,
                          ),
                          Icon(
                            FontAwesomeIcons.fastForward,
                            size: 30,
                          ),
                          Icon(
                            FontAwesomeIcons.replyAll,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Duração: 4:00")
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.55,
            left: MediaQuery.of(context).size.width * 0.25,
            child: const PhysicalModel(
              color: Colors.black,
              elevation: 15,
              shape: BoxShape.circle,
              child: CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/profile_images/1432339376063844353/dVEzhiWc_400x400.jpg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
