import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double result = 0;
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'simple arithmetic app',
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(7),
        //color: Colors.red[500],
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: firstController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'First Number',
                fillColor: Colors.red,
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: secondController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Second Number',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                'Result: $result',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      margin: EdgeInsets.all(5),
                      color: Colors.red[700],
                      child: ElevatedButton(
                        onPressed: () {
                          //code execute on button press
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);

                          setState(() {
                            result = a + b;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[700], // Background color
                          foregroundColor: Colors.white, // Text color
                        ),
                        child: Text('Add(+)'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      margin: EdgeInsets.all(5),
                      color: Colors.red[700],
                      child: ElevatedButton(
                        onPressed: () {
                          //code execute on button press
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);

                          setState(() {
                            result = a - b;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[700], // Background color
                          foregroundColor: Colors.white, // Text color
                        ),
                        child: Text('Subtract(-)'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      margin: EdgeInsets.all(5),
                      color: Colors.red[700],
                      child: ElevatedButton(
                        onPressed: () {
                          //code execute on button press
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);

                          setState(() {
                            result = a * b;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[700], // Background color
                          foregroundColor: Colors.white, // Text color
                        ),
                        child: Text('Multiply(*)'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      margin: EdgeInsets.all(5),
                      color: Colors.red[700],
                      child: ElevatedButton(
                        onPressed: () {
                          //code execute on button press
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);

                          setState(() {
                            result = a / b;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[700], // Background color
                          foregroundColor: Colors.white, // Text color
                        ),
                        child: Text('Divide(/)'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
