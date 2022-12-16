import 'package:flutter/material.dart';
import 'package:uas_makeup/beranda.dart';
import 'package:uas_makeup/group.dart';
import 'package:uas_makeup/pesan.dart';
import 'package:uas_makeup/profile.dart';

class homeaplikasi extends StatefulWidget {
  const homeaplikasi({super.key});
  @override
  State<homeaplikasi> createState() => _homeaplikasiState();
}

class _homeaplikasiState extends State<homeaplikasi>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  void _incrementCounter(int index) {
    setState(() {
      _counter = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    beranda(),
    pesan(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.grey,
      // ),
      home: Scaffold(
          body: Container(
            color: Colors.lightBlueAccent,
            child: Center(
              child: _widgetOptions.elementAt(_counter),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              currentIndex: _counter,
              onTap: _incrementCounter,
              backgroundColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: "BERANDA"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assignment), label: "PESANAN"),
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          'https://asset.kompas.com/crops/tk54IB183Bod2qN9cwx-RNefEdY=/0x0:1000x667/750x500/data/photo/2019/10/12/5da186986d732.jpg'),
                    ),
                    label: "AKUN"),
              ]),
        ),
    );
  }
}
