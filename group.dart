import 'package:flutter/material.dart';

class group extends StatelessWidget {
  const group({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: ListView(padding: const EdgeInsets.all(5), children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage('https://asset.kompas.com/crops/tk54IB183Bod2qN9cwx-RNefEdY=/0x0:1000x667/750x500/data/photo/2019/10/12/5da186986d732.jpg'),
          ),
          title: Text('Pasar Tiban Pemalang'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text('INTEGER TI 2020'),
          onTap: () {},
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage('https://asset.kompas.com/crops/tk54IB183Bod2qN9cwx-RNefEdY=/0x0:1000x667/750x500/data/photo/2019/10/12/5da186986d732.jpg'),
          ),
          title: Text('Dropshiper Indonesia'),
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
