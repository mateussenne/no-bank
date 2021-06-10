import 'package:flutter/material.dart';
import 'package:no_bank/home_page/widgets/info_card.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text(widget.title),
          // leading: Icon(
          //   Icons.menu,
          // ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.settings,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InfoCard(title: 'Cartão de crédito'),
              InfoCard(title: 'Conta'),
              InfoCard(title: 'Empréstimo'),
              InfoCard(title: 'Testando'),
              InfoCard(title: 'Esses cards'),
              InfoCard(title: 'Para ver'),
              InfoCard(title: 'Se o Scroll funciona'),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}
