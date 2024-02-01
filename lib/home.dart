import 'package:flutter/material.dart';
import 'package:udemy_3_2/widgets/customCardContainer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SizedBox(
            height: 200,
            width: 200,
            child: Card(
              color: Colors.cyanAccent,child: Column(
              children: [
                SizedBox(height: 12,),
                Image.asset("assets/images/quiz-logo.png", height: 80,),
                SizedBox(height: 12,),
                Text("Text1"),
                SizedBox(height: 12,),
                ElevatedButton(onPressed: () {}, child: Text("Play"))
              ],
            ),
            )
        ),
        SizedBox(
            height: 200,
            width: 200,
            child: Card(
              color: Colors.deepOrangeAccent,child: Column(
              children: [
                SizedBox(height: 12,),
                Image.asset("assets/images/quiz-logo.png", height: 80,),
                SizedBox(height: 12,),
                Text("Text1"),
                SizedBox(height: 12,),
                ElevatedButton(onPressed: () {}, child: Text("Play"))
              ],
            ),
            )
        ),

      ],
    )

        // Row(
        //   children: [
        //     Card(
        //       color: Colors.red,
        //     ),
        //   ],
        // )

        );
  }
}
