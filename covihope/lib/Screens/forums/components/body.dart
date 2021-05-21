import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<String> notes = [
    "18/02/2020\nHello, I need help!",
    "17/02/2020\nCan someone provide food for one day",
    "16/02/2020\nI need a oximeter",
    "20/02/2020\nI have an extra PPE kit",
    "20/02/2020\nWhich is the closest vaccination centre?",
    "21/02/2020\nMy friend in delhi needs a bed with ventilator",
  ];

  //Body(this.notes);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, pos) {
        return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Card(
              elevation: 4,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Text(
                  notes[pos],
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.6,
                  ),
                ),
              ),
            ));
      },
    );
  }
}
