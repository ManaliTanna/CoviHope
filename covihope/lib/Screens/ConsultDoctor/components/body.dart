import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<String> notes = [
    "Dr.Ahemad\nSpeacialist\n500 meters",
    "Dr.Swati\nSpecialist\n1 Kms",
    "Dr.Milinda\nPulmunologist\n1 kms",
    "Dr.Mariyah\nCardiologist\n5 kms",
    "Dr.Priya\nPhysician\n5 kms"
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
