import 'package:flutter/material.dart';

import '../mode/find_screen_model.dart';
import 'filter.dart';

class Search extends StatelessWidget {
  Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            left: 40,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(


                  ),

                 IconButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                     return Filter();
                   }));
                 }, icon:  Icon(Icons.filter_list_off_sharp)),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 350,
                height: 700,
                child: SingleChildScrollView(
                    child: Wrap(
                      children: List.generate(
                          7,
                              (index) => ListGenerate(
                            i: index,
                          )),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListGenerate extends StatefulWidget {
   late int i;
   ListGenerate({super.key, required this.i});

  @override
  State<ListGenerate> createState() => _ListGenerateState();
}

class _ListGenerateState extends State<ListGenerate> {

  static List<Product> allProducts = [
    new Product(
      color: Color(0x3FB7DFF5),
      image: "assets/images/d1.png",
      text: "Orenge Juice",
      drink_name: "Diet Coke",
      drink_size: "355ml, Price",
      drink_price: r"$1.99 ",
    ),
    new Product(
      color: Color(0x3FFDE598),
      image: "assets/images/d2.png",
      text: "Apple & Grape\nJuice",
      drink_name: "Diet Coke",
      drink_size: "355ml, Price",
      drink_price: r"$1.99 ",
    ),
    new Product(
      color: Color(0x3FD3B0E0),
      image: "assets/images/d3.png",
      text: "Sprite Can",
      drink_name: "Orenge Juice",
      drink_size: "2L, Price",
      drink_price: r"$15.99 ",
    ),
    new Product(
      color: Color(0x3FF7A593),
      image: "assets/images/d4.png",
      text: "Diet Coke",
      drink_name: "Sprite Can",
      drink_size: "325ml, Price",
      drink_price: r"$1.50 ",
    ),
    new Product(
      color: Color(0x19F8A44C),
      image: "assets/images/d5.png",
      text: "Sprite Can",
      drink_name: "Pepsi Can ",
      drink_size: "330ml, Price",
      drink_price: r" $4.99",
    ),
    new Product(
      color: Color(0x3FFDE598),
      image: "assets/images/d6.png",
      text: "Diet Coke",
      drink_name: "Apple & Grape Juice",
      drink_size: "2L, Price",
      drink_price: r" $15.99",
    ),
    new Product(
      color: Colors.greenAccent,
      image: "assets/images/d2.png",
      text: "Orenge Juice",
      drink_name: "Orenge Juice",
      drink_size: "2L, Price",
      drink_price: r"$15.99 ",
    ),
    new Product(
      color: Color(0x3FD3B0E0),
      image: "assets/images/d4.png",
      text: "Sprite Can",
      drink_name: "Pepsi Can ",
      drink_size: "330ml, Price",
      drink_price: r" $4.99",
    ),
  ];
  List <Product> displayedProducts =allProducts;

  @override
  void initState() {
    super.initState();
    displayedProducts = allProducts;
  }

  void filterProducts(String query) {
    setState(() {
      displayedProducts = allProducts
          .where((product) => product.text.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 154.50,
      height: 240.11,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 90.38,
            height: 110.90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(allProducts[widget.i].image),
                fit: BoxFit.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  allProducts[widget.i].drink_name ?? "",
                  style: TextStyle(fontWeight: FontWeight.bold, overflow:TextOverflow.ellipsis),
                ),
                Text(
                  allProducts[widget.i].drink_size ?? "",
                  style: TextStyle(height: 2),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      allProducts[widget.i].drink_price ?? "",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 45.67,
                      height: 45.67,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFF53B175),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      decoration: ShapeDecoration(
        //color:dataList[i].color,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xB253B175)),
          borderRadius: BorderRadius.circular(18),
        ),
        shadows: [
          BoxShadow(
            color: allProducts[widget.i].color,
            blurRadius: 12,
            offset: Offset(0, 6),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
