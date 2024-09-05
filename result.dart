import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalscore;
  final Function ResetHandler;
  Result(this.finalscore, this.ResetHandler);

  String get resulttext {
    var newtexts = "You made it";
    if (finalscore <= 8) {
      newtexts = "You are great and kind";
    } else if (finalscore <= 9) {
      newtexts = "You are fun and crazy";
    } else if (finalscore <= 10) {
      newtexts = "You are awsome";
    }
    return newtexts;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(resulttext,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
          textAlign: TextAlign.center),
      ElevatedButton(
        child: Text("Restart Quiz"),
        onPressed: ResetHandler,
      ),
    ]));
  }
}
