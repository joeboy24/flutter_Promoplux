import 'package:flutter/material.dart';
// import 'package:flutter_promoplux/buttons.dart';
// import 'package:flutter_promoplux/homepage.dart';
import 'package:flutter_promoplux/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),

      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Example'),
      //     backgroundColor: Colors.purple,
      //   ),
      //   floatingActionButton: FloatingActionButton.extended(
      //     foregroundColor: Colors.white,
      //     backgroundColor: const Color.fromARGB(255, 255, 64, 112),
      //     icon: const Icon(Icons.add),
      //     label: const Text('ADD CONTACT'),
      //     onPressed: () {
      //       showDialog(
      //         context: context, 
      //         builder: (context) => AlertDialog(
      //           title: const Text('Alert Header'),
      //           content: const Text('Alert content goes here'),
      //           actions: [
      //             TextButton(
      //               onPressed: () {
      //                 Navigator.of(context).pop();
      //               }, 
      //               child: const Text('Cancel'),
      //             ),
      //             // ElevatedButton(
      //             //   onPressed: () {}, 
      //             //   child: const Text('Save'),
      //             //   ),
      //           ],
      //           contentPadding: const EdgeInsets.all(20),
      //           elevation: 24.0,
      //           backgroundColor: Colors.black,
      //         ),
      //       );
      //     },
      //   ),
      // ),
    
    );
  }

  // void _showAlertDialogBox(BuildContext context) {
  //   showDialog(
  //     context: context, 
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Add New Contact'),
  //         content: const Text('This is the content of the dialog'),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             }, 
  //             style: ElevatedButton.styleFrom(
  //               padding: const EdgeInsets.all(20)
  //             ),
  //             child: const Text('Cancel'),
  //           ),
  //           TextButton(
  //             onPressed: () {}, 
  //             child: const Text('Save')
  //           ),
  //         ],
  //       );
  //     }
  //   );
  // }
}
