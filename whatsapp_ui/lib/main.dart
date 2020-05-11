
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.teal[700]
    ));
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp" , style: TextStyle(fontWeight: FontWeight.normal),),
            actions: <Widget>[Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Icon(Icons.search),
            ) , Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Icon(Icons.more_vert),
            )],
            backgroundColor: Colors.teal[700],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt),),
                Tab(text: "Chats",),
                Tab(text: "Status",),
                Tab(text: "Calls",)
              ],
            ),
          ),

          body: TabBarView(children: [
            Text("Camera"),
            ListView(
              children: [
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 0"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green),),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 1"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 2"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 3"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 4"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 5"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 6"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 7"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 8"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
                Card(child: ListTile(leading: CircleAvatar(child: Icon(Icons.person) , backgroundColor: Colors.teal[700],), title: Text("Contact 9"), subtitle: Text("Test message") ,trailing: Text("12:53 pm" , style: TextStyle(color: Colors.green)),),) ,
              ],

            ),
            Text("Status"),
            Text("Calls")

          ]),
        ),
      ),
    );
  }
}
