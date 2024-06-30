import 'package:flutter/material.dart';
import 'home_page.dart';
import 'calculator_page.dart';
import 'drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tabs Demo'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.calculate), text: 'Calculator'),
              Tab(icon: Icon(Icons.ac_unit), text: 'Other'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            CalculatorPage(),
            Center(
              child: Text('Other Page'),
            ),
          ],
        ),
        drawer: AppDrawer(),
      ),
    );
  }
}
