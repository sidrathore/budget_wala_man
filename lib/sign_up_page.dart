import 'package:budget_wala_man/constaint/sharedprefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
         
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 113, 235, 117),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                     decoration:  InputDecoration(
                      hintText: SharedPrefsConstant.name.toString(),
                    ),
                    controller: nameController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Age',
                    style: TextStyle(fontSize: 20),
                    
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    decoration:  InputDecoration(
                      hintText: SharedPrefsConstant.age.toString(),
                    ),
                    controller: ageController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Email id',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                     decoration:  InputDecoration(
                      hintText: SharedPrefsConstant.emailid.toString(),
                    ),
                    controller: emailController,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Container(
                    width: 150,
                    height: 40,
                    color: Color.fromARGB(255, 29, 86, 31),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/loginpage');
                      },
                      child: Center(
                          child: Text(
                        'done',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
