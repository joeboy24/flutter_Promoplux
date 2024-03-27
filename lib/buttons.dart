import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () {},
        label: const Text('Click Me'),
        icon: const Icon(Icons.message),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(8),
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        //   // foregroundColor: Color.fromARGB(255, 255, 224, 224),
        //   // backgroundColor: Colors.pink,
        //   shape: MaterialStatePropertyAll(
        //     RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(3),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}