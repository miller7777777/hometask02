import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Counter',
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.indigo[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap "-" to decrement',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CounterWidget(),
              SizedBox(
                height: 8,
              ),
              Text(
                'Tap "+" to increment',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                decrease();
              });
            },
            icon: Icon(Icons.remove),
            color: Colors.black,
            // hoverColor: Colors.white,
            // padding: const EdgeInsets.all(8.0),
          ),
          Text(
            _count.toString(),
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                increase();
              });
            },
            icon: Icon(Icons.add),
            color: Colors.black,
            // hoverColor: Colors.white,
            // padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }

  void increase() {
    _count++;
  }

  void decrease() {
    _count--;
  }
}
