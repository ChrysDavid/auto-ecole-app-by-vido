import 'package:auto_ecole_app/view/CircleWidget.dart';
import 'package:auto_ecole_app/models/list_pages_danger.dart';
import 'package:auto_ecole_app/provider/info_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProgressNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Page principale', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
      ),
      // ignore: prefer_const_constructors
      body: CirclePage(),
    );
  }
}

class CirclePage extends StatelessWidget {
  const CirclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 3,
      itemCount: list_pages.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) => CircleWidget(index),
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(1, index.isEven ? 1.5 : 1),
      mainAxisSpacing: 80.0,
      crossAxisSpacing: 48.0,
    );
  }
}

