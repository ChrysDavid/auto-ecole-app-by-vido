// ignore_for_file: file_names

import 'package:auto_ecole_app/models/list_pages_danger.dart';
import 'package:auto_ecole_app/view/page_contenue.dart';
import 'package:auto_ecole_app/provider/info_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CircleWidget extends StatelessWidget {
  final int index;

  CircleWidget(this.index);

  @override
  Widget build(BuildContext context) {
    final page = list_pages[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(index),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(page.images),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(164, 0, 0, 0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  page.titre,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 170,
            width: 170,
            child: Consumer<ProgressNotifier>(
              builder: (context, progressNotifier, child) {
                return CircularProgressIndicator(
                  value: progressNotifier.progress,
                  strokeWidth: 7.0,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
