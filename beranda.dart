import 'package:flutter/material.dart';
import 'package:uas_makeup/item2widget.dart';
import 'package:uas_makeup/itemwidget.dart';

class beranda extends StatelessWidget {
  const beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Store Make Up Syukur'),
      //   backgroundColor: Colors.grey,
      // ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          
          //selamat datang
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "SELAMAT DATANG",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Apa yang ingin anda beli?",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ]),
          ),

          //pencarian
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Cari Disini....",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.filter_list),
              ],
            ),
          ),

          //produk widget
          Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                itemWidget(),
                item2Widget(),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
