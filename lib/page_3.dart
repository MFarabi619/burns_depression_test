import 'package:flutter/material.dart';
import 'page_1.dart';
import 'page_2.dart';

class page_3 extends StatefulWidget {
  List<int> selectedValue;


  page_3({Key? key, required this.selectedValue}) : super(key: key);

  @override
  _page_3State createState() => _page_3State();
}

class _page_3State extends State<page_3> {


  @override
  Widget build(BuildContext context) {

    int sum=0;
    for (var i = 0;i<widget.selectedValue.length;i++){
      sum+= widget.selectedValue[i];
    }

    return (
      Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text(
                  'Your total score is ${sum} '
              ),

              Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.pop(context,
                          widget.selectedValue,
                          );
                        },
                        child: Text(
                            'Previous'
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: (){
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => page_1())
                          // );
                        },
                        child: Text(
                            'Next'
                        ),
                      ),
                    ),
                  ]
              ),

            ]
        ),
      )
    );
  }
}
