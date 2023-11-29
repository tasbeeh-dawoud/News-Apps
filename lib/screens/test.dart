import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Image and TextField Example'),
      ),
      body: GestureDetector(
        onTap: () {
          // Hide the keyboard when tapping outside the TextField
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Display your image here
              Image.asset(
                'assets/your_image.png',
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              // TextField without affecting the image
              Container(
                width: 200.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter text...',
                  ),
                ),
              ),
              // Add other widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}