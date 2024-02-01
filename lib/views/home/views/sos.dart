import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: SosScreen(),
//   ));
// }

class SosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniEndTop,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(70)),
                      child: Icon(
                        Icons.sos,
                        size: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
           MaterialButton(
                  onPressed: () {},
                  child: Text("Cancel SOS"),
                ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              title: Text('SOS Message to be sent'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('List item ${index + 1}'),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Contact'),
                content: TextField(),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        },
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
