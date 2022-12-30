import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/cb.png',
                  width: 70,
                  height: 70,
                ),
                Image.asset(
                  'assets/cb1.png',
                  width: 80,
                  height: 40,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(30),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(7),
                child: const Text(
                  'PROFILE MANAGEMENT',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w700,
                      fontSize: 35),
                )),

            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: const Text(
                  'Upload a new Picture (.jpeg,.png)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink,
                  ),
                )),

            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child:SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          side: BorderSide(width:3, color:Colors.brown), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(30)// Background color
                        ),
                        ),
          child: const Text('Upload '),
                        onPressed: () {
                          //uploading image
                        },
                      )),
            ),


            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: const Text(
                  '\n\n\nUpload your Resume',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink,
                  ),
                )),

            Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child:SizedBox(
                  height: 10,
                  width: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)// Background color
                      ),
                    ),
                    child: const Text('Upload '),
                    onPressed: () {
                      //uploading image
                    },
                  )),
            ),


            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: const Text(
                  '\n\n\n Upload the profile Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink,
                  ),
                )),

            Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child:SizedBox(
                  height: 10,
                  width: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)// Background color
                      ),
                    ),
                    child: const Text('Upload '),
                    onPressed: () {
                      //uploading image
                    },
                  )),
            ),

            Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, // Background color
                ),
                child: const Text('Save'),
                onPressed: () {
                  // saving details
                  // );
                },
              ),
            ),
            Container(
              height: 60,

              padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, // Background color
                ),
                child: const Text('Back'),
                onPressed: () {
                  // back to page 11
                  // );
                },
              ),
            ),

          ],
        ));
  }
}
