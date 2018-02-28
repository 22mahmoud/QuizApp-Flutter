import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool _answer;
  final VoidCallback _onTab;

  AnswerButton(this._answer, this._onTab);

  @override
  Widget build(BuildContext context) {
    // Button
    return new Expanded(
      child: new Material(
        color: _answer ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
            onTap: () => _onTab(),
            child: new Center(
              child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.white, width: 5.0)),
                padding: new EdgeInsets.all(20.0),
                child: new Text(
                  _answer ? 'True' : 'False',
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            )),
      ),
    );
  }
}
