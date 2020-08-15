import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String ans;
  Answer(this.selectHandler, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: RaisedButton(
        color: Colors.yellow[700],
        textColor: Colors.black,
        onPressed: selectHandler,
        child: Text(ans),
      ),
    );
  }
}
