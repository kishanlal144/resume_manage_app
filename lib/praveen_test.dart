import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "kishan lal",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(),
              TextField(),
              ElevatedButton(onPressed: () {
                
              }, child: Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
