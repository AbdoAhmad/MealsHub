import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealshub/widget/categories_page.dart';

import 'model/dummy_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Meals Hub',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.fredokaOneTextTheme(textTheme),
        appBarTheme: AppBarTheme(
          textTheme: GoogleFonts.fredokaOneTextTheme(textTheme),
          color: Color.fromRGBO(236, 236, 236, 1),
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          // elevation: 8.0,
          color: Color.fromRGBO(236, 236, 236, 1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: MyHomePage(title: 'Meals Hub'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.category),
                      Text('Categories'),
                    ],
                  ),
                  onPressed: () {}),
              FlatButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.star),
                      Text('Favorites'),
                    ],
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ),
      body: Center(
        child: Categories(DUMMY_CATEGORIES),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: null,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
