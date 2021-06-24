import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Support Us"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(29.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("🎉",
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.w500)),

              SizedBox(
                height: 15,
              ),
              Text("Thank You !",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w500)),

              // SizedBox(height: 20,),
              // Text("Thanks for using worstcoders! Feel free to reach out to me on Instagram with any feedback.",
              //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
              SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text:
                        "Thanks for using worstcoders! feel free to reach out to me on  ",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal,),
                        
                  ),
                  TextSpan(
                      // style: linkText,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      text: "Instagram",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          var url = "https://instagram.com/raj_patel_2619";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  TextSpan(
                      text: " with any feedback.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.teal)),
                ]),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 10,
              ),
              Text(
                "If you found this product helpful, consider supporting me with a cup of coffee!",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Image.network(
                    'https://cdn.buymeacoffee.com/buttons/v2/default-violet.png'),
              onTap:() async {
                          var url = "https://www.buymeacoffee.com/rajpatel2619";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        } ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
