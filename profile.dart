import 'package:flutter/material.dart';
import 'package:uas_makeup/group.dart';
import 'package:uas_makeup/kontak.dart';
import 'package:uas_makeup/pengaturan.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BELAJAR BOTTOM NAVIGATION BAR',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const profileful(title: 'profilefulwidget'),
    );
  }
}

class profileful extends StatefulWidget {
  const profileful({super.key, required this.title});
  final String title;
  @override
  State<profileful> createState() => profilestate();
}

class profilestate extends State<profileful> {
  int _counter = 0;
  void _incrementCounter(int index) {
    setState(() {
      _counter = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AKUN'),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              // backgroundImage: AssetImage('assets/IMG-20200503-WA0077.jpg'),
            ),
            accountName: Text('Mohamad Arif Abdul Syukur'),
            accountEmail: Text('marifabdulsyukur@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Pengaturan'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return pengaturan();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Kontak'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return kontak();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Group'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return group();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Keluar'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://asset.kompas.com/crops/tk54IB183Bod2qN9cwx-RNefEdY=/0x0:1000x667/750x500/data/photo/2019/10/12/5da186986d732.jpg'),
                    fit: BoxFit.cover),
                shape: BoxShape.circle)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Mohamad Arif Abdul Syukur",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("marifabdulsyukur@gmail.com",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold),),
        ),
          ],
        ),
      ),
    );
  }
}
