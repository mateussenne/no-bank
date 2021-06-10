import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  InfoCard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  int _totalMoney = 0;

  void getRich() {
    setState(() {
      _totalMoney += 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(
            child: Container(
              height: 150,
              width: 350,
              child: Card(
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            widget.title,
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
