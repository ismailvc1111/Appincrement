import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({  Key? key }) : super(key: key);
  final String title = " ";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [
    '1',
    '2',
    '3'
  ];

  void _incrementCounter() {
    setState(() {
      var count = data.length + 1;
      data.add(count.toString());
    });
  }

  void _decrementCounter() {
    setState(() {
      data.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:
              ListView.builder(
                itemCount: data.length,
                padding: EdgeInsets.all(20.0),
                shrinkWrap: true,

                itemBuilder: (context, int index) {
                  return ListTile(
                      title: Text(data[index]),
                      leading: Icon(Icons.add),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: (){},
                  );
                  },
              ),

        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),

            ),

        ]),);
  }
}
