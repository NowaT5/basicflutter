import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn flutter"),
        // สร้างไอคอน กลับเอง
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("action");
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/nowa.jpg"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blue,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This is Text Widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.red,
              ),
              onPressed: () {
                debugPrint("ElevatedButton");
              },
              child: const Text(
                "ElevatedButton",
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("outline");
              },
              child: const Text(
                "Outline",
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text");
              },
              child: const Text(
                "Text",
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the ROW");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.redAccent,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newbool) {
                  setState(() {
                    isCheckBox = newbool;
                  });
                }),
            Image.network(
                "https://static-cdn.jtvnw.net/jtv_user_pictures/5438c6b7-f568-4287-8bbb-26bdf6cab629-profile_image-300x300.png")
          ],
        ),
      ),
    );
  }
}
