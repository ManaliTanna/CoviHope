import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<String> notes = [
    "Manipal Hospital\n 1Km Away",
    "Fortis\n10 2Km Away",
    "Apollo\n10 3Km Away",
    "H B S Hospital\n10 4Km Away"
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
