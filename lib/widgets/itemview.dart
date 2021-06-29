import 'package:flutter/material.dart';

import '../models/itemclass.dart';

class ItemView extends StatelessWidget {
  final Items item;
  const ItemView({
    @required this.item,
  }) : assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Image.network(
          item.img,
          fit: BoxFit.cover,
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.2,
        ),
        //tileColor: Colors.indigo[400],
      ),
    );
  }
}
