import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = '', _pasword = '', _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Form Field Kullanimi')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(children: [
              TextFormField(
                //initialValue: 'muhammedOsman',

                decoration: InputDecoration(
                  labelText: 'User Name',
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
                onSaved: (deger) {
                  _userName = deger!;
                },
                validator: (deger) {
                  if (deger!.length < 4) {
                    return 'Username en az 4 karakter olmalı ';
                  } else
                    return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                // initialValue: 'muhammedosman@gmail.com',
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onSaved: (deger) {
                  _email = deger!;
                },
                validator: (deger) {
                  if (!EmailValidator.validate(deger!)) {
                    return 'Gecerli Mail Giriniz';
                  } else
                    return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                // initialValue: 'muhammedosman@gmail.com',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                onSaved: (deger) {
                  _pasword = deger!;
                },
                validator: (deger) {
                  if (deger!.length < 6) {
                    return 'Gecerli Şifre Giriniz';
                  } else
                    return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: Text('Onayla'))
            ]),
          ),
        ),
      ),
    );
  }
}
