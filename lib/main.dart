import 'package:asky/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff87F29A),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(30, 50, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Do You Have Questions?',
                style: GoogleFonts.gorditas(
                    fontSize: 58, fontWeight: FontWeight.w600),
              ),
              Image(image: AssetImage('assets/images/Rectangle5.png')),
              Container(
                height: 80,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(40)),
                child: 
                Row(
                  children: [
                    Draggable<int>(
                      
                      axis: Axis.horizontal,
                      
                      // Data is the value this Draggable stores.
                      data: 10,
                      feedback: Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 60.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: const Color(0xff87F29A),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            'Create',
                            style: GoogleFonts.gorditas(
                                fontSize: 28, color: Colors.black),
                          ),
                        ),
                      ),
                      childWhenDragging: Container(
                        // margin: EdgeInsets.only(left: 10),
                        height: 60.0,
                        width: 200.0,
                        // decoration: BoxDecoration(
                        // color: Color(0xff87F29A),
                        //   borderRadius: BorderRadius.circular(40)),
                        // child:  Center(
                        //   child: Text('Create',style: GoogleFonts.gorditas(
                        //     fontSize: 28
                        //   ),),
                        // ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 60.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Color(0xff87F29A),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            'Create',
                            style: GoogleFonts.gorditas(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    DragTarget<int>(
                      builder: (
                        BuildContext context,
                        List<dynamic> accepted,
                        List<dynamic> rejected,
                      ) {
                        return Container(
                          margin: const EdgeInsets.only(left: 40),
                          height: 50.0,
                          width: 100.0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white.withOpacity(0.8),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white.withOpacity(0.9)),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          ),
                        );
                      },
                      onAccept: (int data) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const MyWidget()));
                      },
                    ),
                  ],
                ),
              
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Have an account?',style: TextStyle(color: Colors.grey,fontSize: 20),),
                Text('Log In',style: GoogleFonts.gorditas(fontSize: 20,fontWeight: FontWeight.w600),)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
