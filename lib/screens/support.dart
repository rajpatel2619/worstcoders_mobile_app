import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Support Us"),
      ),
      body: Center(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Text("🎉",
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.w500)),
             
              SizedBox(height: 15,),
              Text("Thank You !",
                  style: TextStyle(fontSize: 30,color: Colors.deepPurpleAccent, fontWeight: FontWeight.w500)),
             
              SizedBox(height: 20,),
              Text("Thanks for using worstcoders! Feel free to reach out to me on Instagram with any feedback.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
             
              SizedBox(height: 10,),
              Text("If you found this product helpful, consider supporting me with a cup of coffee!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
             
            ],
          
        ),
      ),
    );
  }
}
