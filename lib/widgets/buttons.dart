import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class buttons extends StatelessWidget {
  final String link;
  final String name;

  const buttons({required this.link, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 5,
      child: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

                ElevatedButton(
style:ElevatedButton.styleFrom(
          primary: Colors.black, // background
          onPrimary: Colors.yellow, // foreground
        ),

                    onPressed: () async {
                      String url = link;
                      var urllaunchable = await canLaunch(url);
                      if(urllaunchable){
                        await launch(url);
                      }else{
                        print("URL can't be launched.");
                      }
                    }, child: Text(name,style: TextStyle(color: Colors.amber),)),



          ],
        ),
      ),
    );
  }
}