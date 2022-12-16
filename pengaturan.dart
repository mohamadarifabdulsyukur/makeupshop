import 'package:flutter/material.dart';

class pengaturan extends StatelessWidget {
  const pengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
      ),
      body: Center(
          child: ListView(padding: const EdgeInsets.all(5), children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Akun'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.chat),
          title: Text('Pesan'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Pemberitahuan'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.filter_none_outlined),
          title: Text('Penyimpanan dan Data'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text('Undang Teman'),
          onTap: () {},
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'KEMBALI',
        child: const Icon(Icons.keyboard_backspace_outlined),
      ),
    );
  }
}
