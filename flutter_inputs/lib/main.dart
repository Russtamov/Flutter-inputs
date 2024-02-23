import 'package:flutter/material.dart';
import 'package:flutter_inputs/date_timer.dart';
import 'package:flutter_inputs/diger_form_elemani.dart';
import 'package:flutter_inputs/stepper_orenk.dart';
import 'package:flutter_inputs/text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StepperOrnekState());
  }
}

class TextFieldIslemleri extends StatelessWidget {
  final String title;
  const TextFieldIslemleri({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autofocus: true,
              maxLines: 1,
              maxLength: 10,
              onChanged: (String deger) {
                if (deger.length > 3) {
                  print(deger);
                }
              },
              decoration: InputDecoration(
                  labelText: 'Label Text',
                  hintText: 'Mail Giriniz',
                  suffix: Icon(Icons.mail),
                  // prefix: Icon(Icons.account_tree),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
            ),
            TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLines: 1,
              maxLength: 10,
              decoration: InputDecoration(
                  labelText: 'Label Text',
                  hintText: 'Şifre Giriniz ',
                  suffix: Icon(Icons.key_sharp),
                  prefix: Icon(Icons.home),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mail),
      ),
    );
  }
}
