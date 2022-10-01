import 'package:flutter/material.dart';
import 'package:flutter_demo/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({Key key}) : super(key: key);

  final Item item ;

  const ItemWidget({Key key, @required this.item}) 
   :assert(Item != null) ,
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        onTap: () {
          print("iphone 14");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}", 
          textScaleFactor: 1.4,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),    
        ),
      ),
    );
  }
}