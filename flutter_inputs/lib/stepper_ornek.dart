import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class StepperOrnekState extends StatefulWidget {
  const StepperOrnekState({super.key});

  @override
  State<StepperOrnekState> createState() => _StepperOrnekStateState();
}

class _StepperOrnekStateState extends State<StepperOrnekState> {
  int _aktifstep = 0;
  late String isim, mail, sifre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stepper Ornekleri')),
      body: SingleChildScrollView(
        child: Stepper(
          steps: _tumstepler(),
          currentStep: _aktifstep,
          onStepTapped: (tiklanilanStep) {
            setState(() {
              _aktifstep = tiklanilanStep;
            });
          },
          onStepCancel: () {},
          onStepContinue: () {},
        ),
      ),
    );
  }
}

List<Step> _tumstepler() {
  List<Step> stepler = [
    Step(
        title: Text('Username Giriniz'),
        subtitle: Text('Username Subtitle'),
        state: StepState.complete,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: 'Username Label',
              hintText: 'Username  Text',
              border: OutlineInputBorder()),
        )),
    Step(
        title: Text('Mail Giriniz'),
        subtitle: Text('Mail Subtitle'),
        state: StepState.complete,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: 'Mail Label',
              hintText: 'Mail Text',
              border: OutlineInputBorder()),
        )),
    Step(
        title: Text('Sifre Giriniz'),
        subtitle: Text('Sifre Subtitle'),
        state: StepState.complete,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: 'Sifre Label',
              hintText: 'Sifre hint Text',
              border: OutlineInputBorder()),
        ))
  ];

  return stepler;
}
