import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//textfield

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
bool password = true;
String username = '';

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Textfield'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            
            Container(
              padding: EdgeInsets.fromLTRB(40, 100, 100, 0),
              
              child: TextField(
                // onChanged: (value) => setState(() {
                //   username = value;
                // }),
                onSubmitted:(value) => setState(() {
                  username =value;
                }),
                autofocus: true,
                enableSuggestions: true,
                enableInteractiveSelection: true,
                textCapitalization: TextCapitalization.words,
                style: TextStyle(color: Colors.blueAccent, fontSize: 14),
                decoration: InputDecoration(icon: Icon(Icons.person),hintText: "Please input username", labelText: 'username'),
                
                
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 100),
              padding: EdgeInsets.fromLTRB(40, 10, 100, 10),
              child: Text('password'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 100, 0),
              child: TextField(
                autofocus: true,
                enableSuggestions: true,
                enableInteractiveSelection: true,
                obscureText:  password,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.password,
                    ),
                    hintText: 'please input password',
                    labelText: 'password',
                    suffix: IconButton(onPressed: ()=>{setState(() => password = !password,)}, icon:Icon(password  ? Icons.visibility_off : Icons.visibility))
                    // prefixIcon: Icon(Icons.password)
                    ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text("+"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: null,
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Center(child: Text('Hasil Input : ${username}'),),
            ),
            Container(
              padding: EdgeInsets.all(100),
              child: ElevatedButton(
                onPressed: null,
                child: Text("+"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
