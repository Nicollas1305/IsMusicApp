import 'package:flutter/material.dart';
import 'package:ismusic/details_page.dart';
import 'package:ismusic/home_page.dart';

void main() {
  runApp(const IsMusicApp());
}

class IsMusicApp extends StatelessWidget {
  const IsMusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home': (_) => const HomePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == DetailsPage.RouteName) {
          final args = settings.arguments as MusicModel;
          return MaterialPageRoute(builder: (context) {
            return DetailsPage(artista: args);
          });
        }
        assert(false, 'sem implementação ${settings.name}');
      },
    );
  }
}
