import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:bs_flutter_card/bs_flutter_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bootstrap Card'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              BsCard(
                children: [
                  BsCardContainer(title: Text('Box Card')),
                  BsCardContainer(child: Container(
                    child: Text('Box Card Content'),
                  )),
                  BsCardContainer(actions: [
                    BsButton(
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      prefixIcon: Icons.block,
                      label: Text('Primary'),
                    )
                  ])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
