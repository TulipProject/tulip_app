import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class mediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.red[400]));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(50, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Video",
                      hintStyle: TextStyle(color: Colors.white),
                      icon: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mic, color: Colors.white),
                      ),
                      VerticalDivider(color: Colors.white),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        icon: Icon(Icons.home, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<TabController>('controller', controller));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = ["One", "Two", "Three", "Four"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text("Card $index"),
                  ),
                  color: Colors.pinkAccent[200],
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text("Card $index"),
                  ),
                  color: Colors.pinkAccent[200],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
