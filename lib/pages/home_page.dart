import 'package:catalog_app/models/itemclass.dart';
import 'package:catalog_app/widgets/itemview.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List duplicate = List.generate(10, (index) => CatalogData.item[0]);
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: duplicate.length,
            itemBuilder: (context, index) {
              return ItemView(
                item: duplicate[index],
              );
            }),
      ),
    );
  }
}
