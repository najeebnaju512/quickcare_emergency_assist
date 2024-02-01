import 'package:flutter/material.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //home
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome User'),
      ),
      body: Expanded(
        flex: 1,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              // height: 400,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Card(
                        child: Text(
                          'Card1',
                        ),
                      ),
                      Card(
                        child: Text(
                          'Card1',
                        ),
                      ),
                      Card(
                        child: Text(
                          'Card1',
                        ),
                      ),
                      Card(
                        child: Text(
                          'Card1',
                        ),
                      ),
                    ]),
              ),
            ),
            Flexible(
              child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('List item ${index + 1}'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
