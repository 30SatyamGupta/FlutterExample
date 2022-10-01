// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class CatalogModel{
//   static List<Item> items ;
  
//   //  [
//   //   Item(id : 1,
//   //    name: "Iphone 14 pro",
//   //    desc: "Apple iphone 14 12th Genration",
//   //    price: 999,
//   //    color: "#33505a", 
//   //    image: "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-14-pro-max-.jpg")
//   // ];
// }




// class Item {
//   final int id;
//   final String name;
//   final String desc;
//   final num price;
//   final String color;
//   final String image;

//   Item({
//      this.id,
//      this.name,
//      this.desc,
//      this.price,
//      this.color,
//     this.image,
//   });

//   // factory Item.fromMap(Map<String, dynamic> map){
//   //   return Item(
//   //     id: map["id"],
//   //     name: map["name"],
//   //     desc: map["desc"],
//   //     price: map["price"],
  
//   //     color: map["color"],
//   //     image: map["image"],
//   //     );
//   // }

//   // toMap() => {
//   //   "id" : id,
//   //   "name" : name,
//   //   "desc" : desc,
//   //   "price" : price,
//   //   "color" : color,
//   //   "image" : image,
//   // };

//   Item copyWith({
//     int id,
//     String name,
//     String desc,
//     num price,
//     String color,
//     String image,
//   }) {
//     return Item(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       desc: desc ?? this.desc,
//       price: price ?? this.price,
//       color: color ?? this.color,
//       image: image ?? this.image,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'desc': desc,
//       'price': price,
//       'color': color,
//       'image': image,
//     };
//   }

//   factory Item.fromMap(Map<String, dynamic> map) {
//     if (map == null) return null;

//     return Item(
//       id: map['id'] as int,
//       name: map['name'] as String,
//       desc: map['desc'] as String,
//       price: map['price'] as num,
//       color: map['color'] as String,
//       image: map['image'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
//   }

//   @override
//   bool operator ==(Object o) {
//     if (identical(this, o)) return true;

//     return o is Item &&
//         o.id == id &&
//         o.name == name &&
//         o.desc == desc &&
//         o.price == price &&
//         o.color == color &&
//         o.image == image;
//   }
//   @override
//   int get hashCode {
//     return id.hashCode ^
//       name.hashCode ^
//       desc.hashCode ^
//       price.hashCode ^
//       color.hashCode ^
//       image.hashCode;
//   }
// }


import 'dart:convert';

class CatalogModel {
  static List<Item> items;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  Item copyWith({
    int id,
    String name,
    String desc,
    num price,
    String color,
    String image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Item &&
        o.id == id &&
        o.name == name &&
        o.desc == desc &&
        o.price == price &&
        o.color == color &&
        o.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}