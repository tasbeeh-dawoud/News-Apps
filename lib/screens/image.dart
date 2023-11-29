
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(height: 60,),
             Row( mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Icon(Icons.music_note,size: 50,color: Colors.purple,)
               ],),
              SizedBox(height: 40,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.music_note,size: 50,color: Colors.purple,)
                ],),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 300,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      width: 120,
                     left: 125, // Adjust this value as needed
                      top: 50,
                     // bottom: 40,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://img.youm7.com/ArticleImgs/2022/12/7/52164-%D8%B2%D9%87%D9%88%D8%B1-%D8%A7%D9%84%D8%A8%D9%86%D9%81%D8%B3%D8%AC.jpg'),
                        radius: 60,
                      ),
                    ),
                    Positioned(
                      width: 120,
                      left: 310,
                      bottom: 60,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://modo3.com/thumbs/fit630x300/38756/1592987324/%D9%85%D8%A7%D8%B0%D8%A7_%D9%8A%D8%B9%D9%86%D9%8A_%D8%A7%D9%84%D9%84%D9%88%D9%86_%D8%A7%D9%84%D8%A8%D9%86%D9%81%D8%B3%D8%AC%D9%8A.jpg'),
                        radius: 80,
                      ),
                    ),
                  ],
                ),
              ),

             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Icon(Icons.music_note,size: 50,color: Colors.purple,),
                 SizedBox(width: 160,),
                 Icon(Icons.music_note,size: 50,color: Colors.purple,)
               ],
             ),
                SizedBox(height: 70,),
              Container(
                alignment: Alignment.bottomRight,
                  child: Icon(Icons.music_note,size: 50,color: Colors.purple,)),

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Hiii'
                      ),
                    )






            ],
          ),
        ),
      ),
    );
  }
}
