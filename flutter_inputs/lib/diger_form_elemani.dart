import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DigerFormElemani extends StatefulWidget {
  const DigerFormElemani({super.key});

  @override
  State<DigerFormElemani> createState() => _DigerFormElemaniState();
}

class _DigerFormElemaniState extends State<DigerFormElemani> {
  bool checkBoxState = false;
  String sehir = '';
  bool doruYalnis = true;
  double slideIslemi = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diger Form Elemani'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          CheckboxListTile(
            value: checkBoxState,
            onChanged: (secildi) {
              setState(() {
                checkBoxState = secildi!;
              });
            },
            activeColor: Colors.red,
            title: Text('Check BOX title'),
            subtitle: Text('Check Box Subttitle'),
            secondary: Icon(Icons.add),
          ),
          RadioListTile<String>(
            value: 'Bursa',
            groupValue: sehir,
            onChanged: (deger) {
              setState(() {
                sehir = deger!;
                print('Bursa ');
              });
            },
            subtitle: Text('Sehir Secin'),
            title: Text('Bursa'),
            secondary: Icon(Icons.map),
          ),
          RadioListTile<String>(
            value: 'Istanbul',
            groupValue: sehir,
            onChanged: (deger) {
              setState(() {
                sehir = deger!;
                print('Istanbul');
              });
            },
            secondary: Icon(Icons.map),
            subtitle: Text('Sehir Secin'),
            title: Text('Istanbul'),
          ),
          RadioListTile<String>(
            value: 'Izmir',
            groupValue: sehir,
            onChanged: (deger) {
              setState(() {
                sehir = deger!;
                print('Izmir ');
              });
            },
            subtitle: Text('Sehir secin'),
            title: Text('Izmir'),
            secondary: Icon(Icons.map),
          ),
          SwitchListTile(
              title: Text('Switch yapisi'),
              secondary: Icon(Icons.wifi),
              value: doruYalnis,
              onChanged: (deger) {
                setState(() {
                  doruYalnis = deger;
                });
              }),
          Slider(
              min: 10,
              max: 30,
              divisions: 20,
              label: slideIslemi.toString(),
              value: slideIslemi,
              onChanged: (yeniDeger) {
                setState(() {
                  slideIslemi = yeniDeger;
                });
              })
        ]),
      ),
    );
  }
}
