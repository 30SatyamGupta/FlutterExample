import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_demo/models/catalog.dart';


import '../widgets/Item_widgets.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String flutter = "flutter";

  @override
  void initState() {
    super.initState();
    loadData();
  }

 loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = 
       await rootBundle.loadString("assets/files/catalog.json");
    final decodedData  = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items  = List.from(productsData)
      .map<Item>((item) => Item.fromMap(item))
      .toList();
   setState(() {});
 }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App" , style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)     
        ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            ),
          itemBuilder: (context,index) {
            final item = CatalogModel.items[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),       
              child: GridTile(
                header: Container(
                  child: Text(item.name , style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  ),
                child: Image.network(item.image),
                footer: Container(
                  child: Text(item.price.toString() , style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  ),
              ),
            );
          },
          itemCount: CatalogModel.items.length,
          )
        //   ListView.builder(
        //   itemCount: CatalogModel.items.length,
        //   itemBuilder:(context, index) => ItemWidget(
        //       item: CatalogModel.items[index],
        //       ),   
        // )
        :Center(
          child:  CircularProgressIndicator(),
        ),
      ),


        drawer: MyDrawer(),
      );
  }
}


