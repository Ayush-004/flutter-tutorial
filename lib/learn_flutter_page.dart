import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein.jpg'),
            SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                debugPrint('ElevatedButton');
              },
              child: const Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                  },
                );
              },
            ),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(
                    () {
                      isCheckbox = newBool;
                    },
                  );
                }),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/0/00/Trafo_Grundschule_%22Albert_Einstein%22_03.jpg'),
          ],
        ),
      ),
    );
  }
}