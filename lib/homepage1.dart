import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 1500,
        color: Color.fromARGB(255, 117, 245, 121),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Name'),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
