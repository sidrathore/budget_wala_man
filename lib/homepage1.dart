import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController monthlyBudget = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home),
          Icon(Icons.account_box_rounded),
          Icon(Icons.settings),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 140, 241, 143),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 80,
                color: Color.fromARGB(255, 57, 160, 60),
                child: Center(
                    child: Text(
                  'Welcome to Wudget Wala Men',
                  style: TextStyle(fontSize: 28),
                )),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 150,
                height: 100,
                child: Image.asset('assets/logo.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'Enter your monthly budget (In rupees)',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 61, 144, 63), width: 1),
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: monthlyBudget,
                    clipBehavior: Clip.none,
                    decoration: InputDecoration(
                      hintText: '   ',
                      hintStyle: TextStyle(fontSize: 20),
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Container(
                  width: 50,
                  height: 25,
                  color: Color.fromARGB(255, 60, 145, 63),
                  child: Center(child: Text('Done')),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              /* FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 45, 122, 47),
               onPressed: () {
                  
                },
                child: Center(child: Text('+')),
                ) */
              SizedBox(
                width: 100,
                height: 100,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 63, 153, 66),
                    onPressed: () {},
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Let Fix Expenses',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
