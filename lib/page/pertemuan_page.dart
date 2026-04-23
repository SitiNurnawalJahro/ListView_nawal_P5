import 'package:flutter/material.dart';

class Pertemuan {
  final String title;
  final String subtitle;

  Pertemuan({required this.title, required this.subtitle});
}

class PertemuanPage extends StatelessWidget {
  final Pertemuan pertemuan;

  const PertemuanPage({Key? key, required this.pertemuan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pertemuan.title),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          pertemuan.subtitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}