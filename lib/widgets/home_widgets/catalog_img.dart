import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/Themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key key,@required this.image}) : super(key: key);
  // const CatalogImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
            image,
          ).box.rounded.p8.color(MyTheme.creameColor).make().p16().w40(context);
  }
}