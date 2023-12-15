import 'package:flutter/material.dart';

import '../mode/find_screen_model.dart';
import 'beverages.dart';

class Find_products extends StatelessWidget {
  Find_products({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (c){
            return Beverages();
          }));
        },child: Text(
          "Find Products",
          style: TextStyle(color: Colors.black,fontSize: 20),
        ),)
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 30, top: 10),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 51,
              decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(15)),
              child: GestureDetector(
                child: const Row(
                  children: [
                    Icon(Icons.search_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search Store")
                  ],
                ),
                onTap: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),

              width: 350,
              height: 600,
              child: SingleChildScrollView(child: Wrap(children: List.generate(
                  7, (index) => ListGenerate(i: index,)),)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> items = ["panana", "orange", "tomato", "mango"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading

    IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> match = [];
    for (var frute in items) {
      if (frute.toLowerCase().contains(query.toLowerCase())) {
        match.add(frute);
      }
    }
    return ListView.builder(
      itemBuilder: (context, i) {
        String result = match[i];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: match.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> match = [];
    for (var frute in items) {
      if (frute.toLowerCase().contains(query.toLowerCase())) {
        match.add(frute);
      }
    }
    return ListView.builder(
      itemBuilder: (context, i) {
        String result = match[i];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: match.length,
    );
  }
}

class ListGenerate extends StatelessWidget {
  late int i;
  static List<Product> dataList = [

    new Product(color: Color(0x3FB7DFF5),
        image: "assets/images/pana.png",
        text:"Frash Fruits \n& Vegetable",

    ),
    new Product(color: Color(0x3FFDE598),
        image: "assets/images/p1.png",
        text:"Cooking Oil \n& Ghee",

    ),
    new Product(color: Color(0x3FD3B0E0),
        image: "assets/images/p2.png",
        text:"Meet \n& Fish",

    ),
    new Product(color: Color(0x3FF7A593),
        image: "assets/images/p3.png",
        text:"Bakery & Snacks"
    ,

    ),
    new Product(color: Color(0x19F8A44C),
        image: "assets/images/p4.png",
        text:"Dairy & Eggs",

    ),
    new Product(color: Color(0x3FFDE598),
        image: "assets/images/pana.png",
        text:"Cooking Oil \n& Ghee",

    ),
    new Product(color: Colors.greenAccent,
        image:"assets/images/p5.png",
        text:"Frash Fruits \n& Vegetable",


    ),
    new Product(color: Color(0x3FD3B0E0),
        image: "assets/images/pana.png",
        text:"Meet \n& Fish",

    ),

  ];

  ListGenerate({super.key, required this.i});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(5),
        width: 154.50,
        height: 169.11,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          Container(
          width: 111.38,
          height: 74.90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(dataList[i].image),
              fit: BoxFit.fill,
            ),
          ),
        ),
          Text(dataList[i].text)
        
        ],),
        decoration: ShapeDecoration(
        //color:dataList[i].color,
    shape: RoundedRectangleBorder(
    side: BorderSide(width: 1, color: Color(0xB253B175)),
    borderRadius: BorderRadius.circular(18),
    ),
    shadows: [

    BoxShadow(
    color:dataList[i].color,

    blurRadius: 12,
    offset: Offset(0, 6),
    spreadRadius: 0,)
    ],
        ),
    )
    ;
  }
}

