import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<String> notes = [
    "Janavi\n18/02/2020\nFeeling Dzzy",
    "Milinda\n19/02/2020\nHigh Fever",
    "Manali\n19/02/2020\nWeakness",
    "Thilak\n21/02/2020\nHard to breathe",
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
