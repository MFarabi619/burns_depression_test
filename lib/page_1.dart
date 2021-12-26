import 'package:burns_depression_test/page_2.dart';
import 'package:flutter/material.dart';

class page_1 extends StatefulWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  _page_1State createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  List<int> selectedValue = new List.filled(25, 0, growable: true);

  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.grey[800],
            title: const Text(
              'Burn\'s Depression Test',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  style: TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Your Name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page_2(selectedValue: selectedValue)),
                      );
                      selectedValue = result;
                      print(selectedValue);
                    },
                    child: Text('Next'),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

