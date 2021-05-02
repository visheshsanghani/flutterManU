import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_1/themes/texts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          //pass it to theme data
          bodyText1: Texts.body1()
        ),
        
        
        
        
        
        
        
        
        
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Demo Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      
      
      
      
      _counter++;
    });
  }

  Future<http.Response> fetchAlbum() {
    return http.get(
      Uri.parse(
          'https:
      
      headers: {
        HttpHeaders."x-rapidapi-host": "Basic your_api_token_here",
        HttpHeaders."x-rapidapi-key": "Basic your_api_token_here",
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    
    
    
    
    
    return Scaffold(
      appBar: AppBar(
        
        
        title: Text(widget.title),
      ),
      body: Center(
        
        
        child: Column(
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have clicked the button this many times:',
              //calling it directly 
              style: Texts.body1()
            ),
            Text(
              '$_counter',
              //calling it from theme data
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
