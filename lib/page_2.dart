import 'package:burns_depression_test/page_3.dart';
import 'package:flutter/material.dart';

class page_2 extends StatefulWidget {

  List<int> selectedValue;
  page_2({Key? key, required this.selectedValue}):super (key:key);


  @override
  _page_2State createState() => _page_2State();
}

class _page_2State extends State<page_2> {

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Table
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Table(
                  border: TableBorder.symmetric(
                      inside: BorderSide(width: 2, color: Colors.blue),
                      outside: BorderSide(width: 3, color: Colors.blue)),
                  columnWidths: const {
                    0: FlexColumnWidth(15),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1),
                    5: FlexColumnWidth(1),
                  },
                  children: [
                    //Row 1
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 00, 0),
                        child: RichText(
                            text: const TextSpan(
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Instructions: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'Put a check ✔ to indicate how much'
                                    ' you have experienced each symptom during the past week, '
                                    'including today. '
                                    'Please answer all 25 items.'),
                          ],
                        )),
                      ),
                      createTableCell('0 = Not At All'),
                      createTableCell('1 = Somewhat'),
                      createTableCell('2 = Moderately'),
                      createTableCell('3 = A Lot'),
                      createTableCell('4 = Extremely'),
                    ]),
                    //Row 2
                    createCategoryRow('Thoughts and feelings'),
                    //Row 3
                    createRegularRow('Feeling sad or down in the dumps', 1),
                    //Row 4
                    createRegularRow('Feeling unhappy or blue', 2),
                    //Row 5
                    createRegularRow('Crying spells of tearfulness', 3),
                    //Row 6
                    createRegularRow('Feeling discouraged', 4),
                    //Row 7
                    createRegularRow('Feeling hopeless', 5),
                    //Row 8
                    createRegularRow('Low self-esteem', 6),
                    //Row 9
                    createRegularRow('Feeling worthless or inadequate', 7),
                    //Row 10
                    createRegularRow('Guilt or shame', 8),
                    //Row 11
                    createRegularRow(
                        'Criticizing yourself or blaming others', 9),
                    //Row 12
                    createRegularRow('Difficulty making decisions', 10),
                  ],
                ),
              ),

              //Previous and Next Buttons
              Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        widget.selectedValue,
                      );
                    },
                    child: Text('Previous'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page_3(selectedValue: widget.selectedValue)),
                      );
                      widget.selectedValue = result;
                      print(widget.selectedValue);
                    },
                    child: Text('Next'),
                  ),
                ),
              ]),
            ]),
      ),
    ));
  }

  TableCell createTableCell(String string) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.bottom,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(string),
        ),
      ),
    );
  }

  TableRow createCategoryRow(String string) {
    return TableRow(
        decoration: BoxDecoration(color: Colors.grey[400]),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(string),
            ),
          ),
          Text(''),
          Text(''),
          Text(''),
          Text(''),
          Text(''),
        ]);
  }

  TableRow createRegularRow(String string, int num) {
    int listNum = num - 1;

    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 0, 0, 2),
          child: Text('${num}. $string'),
        ),
        Radio(
          value: 0,
          groupValue: widget.selectedValue[listNum],
          onChanged: (value) => setState(() => widget.selectedValue[listNum] = 0),
        ),
        Radio(
          value: 1,
          groupValue: widget.selectedValue[listNum],
          onChanged: (value) => setState(() => widget.selectedValue[listNum] = 1),
        ),
        Radio(
          value: 2,
          groupValue: widget.selectedValue[listNum],
          onChanged: (value) => setState(() => widget.selectedValue[listNum] = 2),
        ),
        Radio(
          value: 3,
          groupValue: widget.selectedValue[listNum],
          onChanged: (value) => setState(() => widget.selectedValue[listNum] = 3),
        ),
        Radio(
          value: 4,
          groupValue: widget.selectedValue[listNum],
          onChanged: (value) => setState(() => widget.selectedValue[listNum] = 4),
        ),
      ],
    );
  }
}
