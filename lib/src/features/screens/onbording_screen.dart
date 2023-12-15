import 'package:flutter/material.dart';
import 'package:groceries_app/src/features/screens/signin_screen.dart';


class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/person.png"), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/Group.png",height:44,width: 40,),
            SizedBox(height: 20,),

            const Text(
              "   Welcome \n to our store",
              style: TextStyle(color: Colors.white, fontSize: 48,height: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Ger your groceries in as fast as one hour",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor:const Color(0xff53B175),
                minimumSize:Size(353, 67),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SignIN();
                  }));
                }, child:const Text("Get stored",style: TextStyle(color: Colors.white),
            
            )),
           const SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}
