
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {

    void importExcelModal() {
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            content: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Upload Excel File',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        // fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () async {
                        var newFile = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['xlsx', 'csv']);
                      },
                      icon: const Icon(Icons.upload_file),
                      label: const Text('CHOOSE FILE'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                        elevation: 0.5,
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ), 
                      // child: const Text('Choose File'),
                    ),
                    const SizedBox(height: 10),
                    const Text('No file selected',
                      style: TextStyle(
                        // fontStyle: FontStyle.italic,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
            ),
          );
        }
      );
    }

    return Scaffold(
      // children: [
        // const Text('Name'),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0, right: 40, bottom: 15.0, left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.blueAccent),
                  border: Border(
                    // bottom: BorderSide(color: Color.fromARGB(255, 216, 216, 216), width: 1.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: [
                      Text('New Contact',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('Create / Import Contacts',
                        style: TextStyle(
                          // fontSize: 30.0,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  // ElevatedButton(
                  //   onPressed: null, 
                  //   child: Text('Create New')
                  // ),
                  ElevatedButton.icon(
                    onPressed: importExcelModal, 
                    label: const Text('Import from Excel'),
                    icon: const Icon(Icons.upload_file),
                    style: ElevatedButton.styleFrom(
                      elevation: 0.5,
                      foregroundColor: Colors.pink,
                      backgroundColor: const Color.fromARGB(255, 255, 238, 244),
                    ), 
                    // child: const Text('Import from Excel'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              _importInput('Firstname'),
              _importInput('Surname'),
              _importInput('Phone'),
              _importInput('Email'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('SAVE CONTACT'),
                  icon: const Icon(Icons.check_circle_outline),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pink,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  // style: ButtonStyle(
                  //   foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  //   backgroundColor: const MaterialStatePropertyAll(Colors.pink),
                  //   shape: MaterialStatePropertyAll(
                  //     RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(5),
                  //     ),
                  //   ),
                  // ), 
                  // child: const Text('Save Contact'),
                  ),
              ),
            ],
          ),
        ),
      // ],
    );
  }
}

Widget _importInput(String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5,),
        TextField(
          decoration: InputDecoration(
            // label: const Text('data'),
            hintText: 'Enter $title',
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onChanged: null,
        ),
      ],
    ),
  );
}