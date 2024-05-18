import 'package:baiust_alumni/profile_page.dart';
import 'package:baiust_alumni/registration_page.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFF1C4B03),
                    Color(0xff281537),
                  ]),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 22),
                  child: Text(
                    'Hello\nBAIUSTian!',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  child:  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                label: Text('Gmail',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff062102),
                                ),)
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                                label: Text('Password',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff062102),
                                ),)
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text('Forgot Password?',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0xff281537),
                            ),),
                          ),
                          const SizedBox(height: 70,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProfileScreen (fullName: 'Yeakub',id: '1111', department: 'CSE', batch: '3', passingYear: '2022', email: 'xyz@gmail.com', experience: 'zenithhbd',)),
                              );
                            },
                            child: Container(
                              height: 55,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF1C4B03),
                                    Color(0xff281537),
                                  ],
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 150,),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "Don't have account?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => RegScreen()), // Replace SignUpScreen with your target screen
                                    );
                                  },
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ));
    }
}