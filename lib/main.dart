import 'package:flutter/material.dart';

import 'widgets/buttons.dart';
void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "Portfolio",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Portfolio',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amber),),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:

            <Widget>[
              SizedBox(height: 50),
              CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/profile.jpeg'),
              ),

              SizedBox(height: 20),
              Text(
                'Dhairya Garg',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Flutter Developer||Firebase',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child:Text(
                  'Welcome to my portfolio website. I am a passionate Flutter developer. I am Learning as well as Developing beautiful and performant mobile apps. Feel free to explore my projects and get in touch with me!',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),

              ),
              SizedBox(height: 50),
              Text(
                'Links',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children:

                    <Widget>[
                      buttons(
                        link: "https://www.linkedin.com/in/dhairya-garg-0b584b249",
                        name: 'Linkedin',
                      ),
                      buttons(
                        link: "https://github.com/dhairya703",
                        name: 'Github',
                      ),
                      buttons(
                        link: "https://www.instagram.com/dhairya_garg/",
                        name: 'Instagram',
                      ),
                      buttons(
                        link:"https://twitter.com/DhairyaGarg6",
                        name: 'Twitter',
                      ),

                    ] ),

              ),
              SizedBox(height: 20,),
              Text("Cv"),

              Text(
                'My Projects:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(padding: EdgeInsets.all(10),
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Text("I developed a Mess menu App specifically designed for VIT Chennai, addressing the recurring issue faced by students who had to open a photo every time they wanted to view the menu."),
                    Text("Features in the app:",textAlign:TextAlign.left,),
                    Text("1)Firebase enable push notifications and in-app messaging.",textAlign:TextAlign.left,),
                    Text("push notification helps to remind people of their meals",textAlign:TextAlign.left,),

                    Text("2)Saving data locally using shared preferences.",textAlign:TextAlign.left,),
                    Text("3)Used intl package to get the date from users device and directly open the day")
                  ],
                ),
              ),

              // Wrap(
              //   spacing:20,
              //   runSpacing:10,
              //   alignment: WrapAlignment.start,
              //   children: [
              //     Container(height: 200,
              // width: 200,
              //        // child:Image(image:AssetImage("images/Homepage.jpeg")))
              //     ],
              // ),
              SizedBox(height: 50),
              Text(
                'Contact',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Email: Dhairyagarg06@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Phone: +91 7357385483',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 50),
              Text(
                '© 2023 Dhairya Garg. All rights reserved.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 20),


            ],
          ),
        )
    );
  }
}


