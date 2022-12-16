import 'package:flutter/material.dart';

class kontak extends StatelessWidget {
  const kontak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak'),
      ),
      body: Center(
          child: ListView(padding: const EdgeInsets.all(5), children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Nurul Aulia'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Siti Maimunah'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('My Crush'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Sayangku'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Rizki Sasing'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Septianti Fisika'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Jaki'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Iril'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Salma'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Aulia Sidoarjo'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Jihan fisika 20'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Farida Dwi Rahmawati'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Izan'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Indra'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_circle_outlined),
          title: Text('Mafaza'),
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
