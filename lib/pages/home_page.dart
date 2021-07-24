import 'dart:convert';

import 'package:catalog_app/models/itemclass.dart';
import 'package:catalog_app/widgets/itemview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loading_data();
  }

  void loading_data() async {
    Future.delayed(Duration(seconds: 2));
    final jsonString =
        await rootBundle.loadString("assets/catalogdata/data.json");
    final decodedData = jsonDecode(jsonString);
    final listData = decodedData["products"];
    CatalogData.item =
        List.from(listData).map<Items>((e) => Items.fromMap(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    // List duplicate = List.generate(10, (index) => CatalogData.item[0]);
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:(CatalogData.item!=null && CatalogData.item.isNotEmpty)? ListView.builder(
            itemCount: CatalogData.item.length,
            itemBuilder: (context, index) {
              return ItemView(
                item: CatalogData.item[index],
              );
            })
            :Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
