import 'dart:ui';
class Product{
  Color color;
  String image;
  String text;
  String? drink_name;
  String? drink_size;
  String? drink_price;

  Product({required this.color,required this.image,required this.text,this.drink_name,this.drink_price,this.drink_size});
}