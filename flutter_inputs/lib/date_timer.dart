import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TarihSaatOrnek extends StatefulWidget {
  const TarihSaatOrnek({super.key});

  @override
  State<TarihSaatOrnek> createState() => _TarihSaatOrnekState();
}

class _TarihSaatOrnekState extends State<TarihSaatOrnek> {
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    DateTime ucAyoncesi = DateTime(2023, suan.month - 3);
    DateTime yirmiGunSonrasi = DateTime(2023, suan.day + 20);

    TimeOfDay suankiSaat = TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(title: Text('Date and Timer')),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: suan,
                  firstDate: ucAyoncesi,
                  lastDate: yirmiGunSonrasi);
            },
            child: Text('Tarih'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showTimePicker(context: context, initialTime: suankiSaat);
            },
            child: Text('Saat'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
          )
        ],
      )),
    );
  }
}
