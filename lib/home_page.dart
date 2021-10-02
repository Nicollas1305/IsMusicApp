import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        actions: const [
          Icon(Icons.music_note),
        ],
        title: const Text('Is Music App'),
      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.blue, Colors.deepOrange]),
          ),
          child: Center(
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/nusics.json'),
                builder: (context, snapshot) {
                  //var musics = json.decode(snapshot.data.toString('assets/musics.json'))

                  return ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(
                        color: const Color(0xFFFFFF).withOpacity(0.5),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 100,
                          child: Row(
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(45.0),
                                elevation: 4,
                                child: const CircleAvatar(
                                  radius: 45.0,
                                  backgroundImage: NetworkImage(
                                      "https://pbs.twimg.com/profile_images/1432339376063844353/dVEzhiWc_400x400.jpg"),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Gusttavo Lima",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "TesteTesteTeste",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
          )),
    );
  }
}
