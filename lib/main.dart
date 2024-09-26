import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: to_do_app(),
    );
  }
}

class to_do_app extends StatefulWidget {
  const to_do_app({super.key});

  @override
  State<to_do_app> createState() => _to_do_appState();
}

class _to_do_appState extends State<to_do_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        elevation: 6,
        title: const Text(
          "TO Do List",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1),
      ),
      body: SizedBox(
        width: double.infinity,
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.amber,
                    width: double.infinity,
                  
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Data",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
