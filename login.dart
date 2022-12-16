import 'package:flutter/material.dart';
import 'package:uas_makeup/beranda.dart';
import 'package:uas_makeup/homeapk.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: "Masukan Nama Lengkap Anda",
              labelText: "Nama Lengkap",
              icon: Icon(Icons.person),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            obscureText: true,
            decoration: new InputDecoration(
              hintText: "Masukan Password Anda",
              labelText: 'Password',
              icon: Icon(Icons.key),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return homeaplikasi();
                  }));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )))
      ],
    ));
  }
}
