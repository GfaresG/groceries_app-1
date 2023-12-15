import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Filter",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
          padding: EdgeInsets.all(20),
alignment: Alignment.topLeft,
          child: Column(children: [
            Container(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 10,),
                Text(
                  'Categories',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),

              SizedBox(height: 10,),
Row(
  children: [
        Checkbox(value: true, onChanged: (c){}
        ,fillColor:MaterialStatePropertyAll(Color(0xff53B175)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
    Text(
      'Eggs',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF53B175),
        fontSize: 16,
        fontFamily: 'Gilroy-Medium',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    ),
  ],
),

              SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (c){}
                      ,fillColor:MaterialStatePropertyAll(Color(0xFFF2F3F2)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      'Noodles & Pasta',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (c){}
                      ,fillColor:MaterialStatePropertyAll(Color(0xFFF2F3F2)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      'Chips & Crisps',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
             SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (c){}
                      ,fillColor:MaterialStatePropertyAll(Color(0xFFF2F3F2)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      'Fast Food',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),
                Text(
                  'Brand',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (c){}
                      ,fillColor:MaterialStatePropertyAll(Color(0xff53B175)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      'Individual Callection',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (c){}
                      ,fillColor:MaterialStatePropertyAll(Color(0xFFF2F3F2)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      'Cocola',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (c){}
                      ,fillColor:MaterialStatePropertyAll(Color(0xFFF2F3F2)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      'lfad',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (c){}
                      ,fillColor:MaterialStatePropertyAll(Color(0xFFF2F3F2)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      'kzai Farmos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
            ],),),

            SizedBox(height: 120,)
,
          ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(364, 67)
              ,backgroundColor: Color(0xFF53B175),
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15))
              ),
              onPressed: (){}, child: Text(
            'Apply Filter',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFFF9FF),
              fontSize: 18,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.normal,
              height: 0.06,
            ),
          ))
          ],),
        width: 414,
        height: 781,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFF2F3F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ),)
        ],
      ),
    );
  }
}
