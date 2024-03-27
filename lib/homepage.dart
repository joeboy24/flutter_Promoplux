// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _showDialog1() {
    showDialog(
      context: context, 
      builder: (context) {
        // return CupertinoAlertDialog(
        return AlertDialog(
          backgroundColor: Colors.white,
          // title: const Text('New Contact',
          //   style: TextStyle(
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          content: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey, width: 1)
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Firstname',
                      // border: InputBorder.none,
                      // contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    ),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // const Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(top: 10.0),
          //       child: Text('New Contact',
          //         style: TextStyle(
          //           fontSize: 22.0,
          //           fontWeight: FontWeight.w600
          //         ),
          //       ),
          //     ),
          //     Text('Create new contact here',
          //       style: TextStyle(
          //         color: Color.fromARGB(255, 101, 101, 101),
          //         fontSize: 12.0,
          //       ),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(10.0),
          //       child: TextField(
          //         decoration: InputDecoration(
          //           hintText: 'Firstname',
          //           contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          //         ),
          //         style: TextStyle(
          //           fontSize: 14.0,
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 60, 89),
                backgroundColor: const Color.fromARGB(255, 255, 236, 240),
              ), 
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () { }, 
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 21, 137, 40),
                backgroundColor: const Color.fromARGB(255, 200, 255, 234),
              ),
              child: const Text('Save')
            ),
          ],
        );
      }
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 245, 232),
      body: Center(
        child: ElevatedButton(
          // color: Colors.deepOrange,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 255, 60, 89),
          ),
          onPressed: _showDialog1,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('SHOW DIALOG',
            // style: TextStyle(fontSize: 30.0),
            ),

            // child: Row(
            //   children: [
            //     Icon(Icons.add),
            //     Text('SHOW DIALOG',
            //     // style: TextStyle(fontSize: 30.0),
            //     ),
            //   ],
            // )

          ),
        ),
      ),
    );
  }
  
  // Widget inputForm() {
  //   return const Column(
  //     children: [
  //       Text('Name'),
  //       SizedBox(height: 10.0,
  //       ),
        
  //       Container(
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10.0),
  //           border: Border.all(color: Colors.grey, width: 1)
  //         ),
  //         child: const Padding(
  //           padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
  //           child: TextField(
  //             decoration: InputDecoration(
  //               border: InputBorder.none,
  //               hintText: 'Firstname',
  //               // border: InputBorder.none,
  //               // contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
  //             ),
  //             style: TextStyle(
  //               fontSize: 14.0,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}