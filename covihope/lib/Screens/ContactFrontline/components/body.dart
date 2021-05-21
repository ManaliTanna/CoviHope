import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<String> notes = [
    "Bed Supplies\n080-(440)527-2004",
    "Oxygen Cylinder\n096633 05474",
    "Medical Pharmacy\n099861 70191",
    "Care Takers\n096633 05474",
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
