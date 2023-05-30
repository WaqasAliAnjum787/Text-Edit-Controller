import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GetText());
  }
}

class GetText extends StatefulWidget {
  const GetText({super.key});

  @override
  State<GetText> createState() => _GetTextState();
}

class _GetTextState extends State<GetText> {
  late TextEditingController firstTextController,
      secondTextController,
      thirdTextController;
  String firstData = '', secondData = '', thirdData = '';

  @override
  void initState() {
    super.initState();
    firstTextController = TextEditingController();
    secondTextController = TextEditingController();
    thirdTextController = TextEditingController();
  }

  @override
  void dispose() {
    firstTextController.dispose();
    secondTextController.dispose();
    thirdTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          TextField(
            controller: firstTextController,
            onChanged: (value) {
              setState(() {
                firstData = firstTextController.text;
              });
            },
          ),
          TextField(
            controller: secondTextController,
          ),
          TextField(
            controller: thirdTextController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonBar(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          firstData = firstTextController.text;
                        });
                      },
                      child: const Text('First')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          secondData = secondTextController.text;
                        });
                      },
                      child: const Text('Second')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          thirdData = thirdTextController.text;
                        });
                      },
                      child: const Text('Third')),
                ],
              ),
            ],
          ),
          Text(firstData),
          Text(secondData),
          Text(thirdData),
          Text(firstData),
          Text(secondData),
          Text(thirdData),
        ]),
      ),
    );
  }
}
