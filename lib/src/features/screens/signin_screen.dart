import 'package:flutter/material.dart';

class SignIN extends StatelessWidget {
  const SignIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/back.png"),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    top: 15,
                    right: 40,
                    child: Image.asset("assets/images/stiker.png")),
              ],
            ),
            const Text(
              "    Get your groceries \n    with nectar",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 25),
                child: TextFormField(
                  decoration: InputDecoration(

                      hintText: '   +880 ',
                      hintStyle: const TextStyle(color: Colors.black, height: 1),
                      prefix:
                          Image.asset("assets/images/slogan.png"),
                    ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
             const Text(
                  "Or connect with social media",
                  style: TextStyle(fontSize: 14),
                ),


             Container(
               margin:const EdgeInsets.all(30),
               child: Column(children: [
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(backgroundColor:const Color(0xff5383EC),
                       minimumSize:Size(353, 67),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                     ),
                     onPressed: (){}, child:Row(
                   children: [
                     Image.asset("assets/images/google.png"),
                     SizedBox(width: 40,),
                     const Text("Continue with Google",style: TextStyle(color: Colors.white),

                     ),
                   ],
                 )),
               const SizedBox(height: 20,),
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(backgroundColor:const Color(0xff4A66AC),
                       minimumSize:Size(300, 67),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                     ),
                     onPressed: (){}, child:Row(
                   children: [
                     Image.asset("assets/images/face.png"),
                     SizedBox(width: 40,),
                     const Text("Continue with Facebook",style: TextStyle(color: Colors.white),

                     ),
                   ],
                 )),
               ],),
             )
            ],)

          ],
        ),
      ),
    );
  }
}
