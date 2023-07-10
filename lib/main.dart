import 'package:bayrakuygulamasi/QuizEkrani.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor:Colors.deepPurple,
        title: Text("ANASAYFA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("QUİZ'E HOŞGELDİNİZ",style:TextStyle(fontSize: 30),),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                child: Text("BAŞLA"),
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>  QuizEkrani()));

                  },

              ),
            ),

          ],
        ),
      ),

    );
  }
}
