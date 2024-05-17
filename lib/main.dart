import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
   int x= 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text("My Lottery Application")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Lottery Winning Number is 4")),
            SizedBox(
              height: 10,
            ),
            Container(
              height: x==4 ? 500:250,
              width: 250,
              decoration: BoxDecoration(
                color:  x== 4 ? Colors.pink : Colors.blueGrey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4 ?
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.done_all, color: Colors.blue, size: 100,),
                        SizedBox(
                          height: 20,
                        ),
                         Text("You have won the lottery"),
                      ],
                    ) :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Icon(Icons.error, color: Colors.red, size: 20,),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Better luck next time your number is $x\n try again', textAlign: TextAlign.center,),

                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(random.toString());
            x = random.nextInt(6);
            setState(() {


            });

          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
