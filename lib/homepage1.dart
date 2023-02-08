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


    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home),
          Icon(Icons.account_box_rounded),
          Icon(Icons.settings),
          
        ],
      ),
      backgroundColor:  Color.fromARGB(255, 140, 241, 143),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          
          child: Column(
           children: [
            Container(
                 height: 80,
                 color: Color.fromARGB(255, 57, 160, 60),
                 child: Center(child: Text('Welcome to Wudget Wala Men',style: TextStyle(fontSize: 28),)),
              ),
              Row(
                children:[ 
                  SizedBox(height: 300,),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 60,
                    width: 80,
                    child: Image.asset('assets/logo.png'),
                  ),
                  InkWell(
                    child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    color: Color.fromARGB(255, 56, 161, 59).withOpacity(0.5),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your monthly budget here (In rupee)',
                        hintStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                                  ),
                  ),
                ]
              ),
              SizedBox(height: 100,),
              Container(
                padding: EdgeInsets.all(10),
                child: FloatingActionButton(
                  onPressed: () {
                    
                  },
                  child: Text('+',style: TextStyle(fontSize: 25),),
                  backgroundColor: Color.fromARGB(255, 50, 136, 53),
                )
              ),
              Container(
                padding: EdgeInsets.all(9),
                child: Text('Lets Fix Expenses'),
              ),
           ],
          ),

        ),
      ),
    );
  }
}
