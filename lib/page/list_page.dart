import 'package:flutter/material.dart';
import 'package:flutter_application_3/page/pertemuan_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Pertemuan> pertemuan = [
    Pertemuan(title: 'Pertemuan 1', subtitle: 'Pengenalan Android'),
    Pertemuan(title: 'Pertemuan 2', subtitle: 'Widget & Button'),
    Pertemuan(title: 'Pertemuan 3', subtitle: 'Activity & Intent'),
    Pertemuan(title: 'Pertemuan 4', subtitle: 'Toast & AlertDialog'),
    Pertemuan(title: 'Pertemuan 5', subtitle: 'ListView'),
    Pertemuan(title: 'Pertemuan 6', subtitle: 'Checkbox'),
    Pertemuan(title: 'Pertemuan 7', subtitle: 'Radio Button'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Pertemuan"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: pertemuan.length,
        itemBuilder: (context, index) {
          final item = pertemuan[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.menu_book, color: Colors.blue),
              title: Text(
                item.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(item.subtitle),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PertemuanPage(pertemuan: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}