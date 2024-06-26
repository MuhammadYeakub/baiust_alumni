import 'package:baiust_alumni/profile_page.dart';
import 'package:flutter/material.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(//thanks for watching
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffB81736),
                  Color(0xff281537),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
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
                              label: Text('Full Name',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Id',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Department',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Batch',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Passing Year',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Experience',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Email',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),

                        const SizedBox(height: 10,),
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
                                  Color(0xffB81736),
                                  Color(0xff281537),
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
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
