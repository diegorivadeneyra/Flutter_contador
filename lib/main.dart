import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Contador Demo',
      theme: ThemeData(primarySwatch: Colors.red,),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0; 
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  void _decremenCounter(){
    setState(() {
      _counter--;
    });
  }
  void _multiCounter(){
    setState(() {
      _counter =_counter*2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contar'),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_counter',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )
            ),           
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ElevatedButton.icon(
              onPressed: (){  
                _decremenCounter();
              }, 
              icon: const Icon(Icons.remove), 
              label: const Text('Resta'), 
              style: ElevatedButton.styleFrom(
                elevation: 10
              ),
            ),
            
            const SizedBox(width: 10,),
            ElevatedButton.icon(
              onPressed: (){  
                _incrementCounter();
              }, 
              icon: const Icon(Icons.add), 
              label: const Text('Sumar'), 
              style: ElevatedButton.styleFrom(
                elevation: 10
              ),
            ),
            const SizedBox(width: 10,),
            ElevatedButton.icon(
              onPressed: (){  
                _multiCounter();
              }, 
              icon: const Icon(Icons.close), 
              label: const Text('Multiplicar'), 
              style: ElevatedButton.styleFrom(
                elevation: 10
              ),
            ),
              ]
            )
          ],
        ),
      ),
    ); 
  }
}