import 'package:flutter/material.dart';
import './page-data-diri.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: konten(),
    );
  }
}

class konten extends StatefulWidget {
  const konten({super.key});

  @override
  State<konten> createState() => _kontenState();
}

class _kontenState extends State<konten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Nomor Hp",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Nomor Hp",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Belum punya akun?"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DataDiri(),
                    ));
                  });
                },
                child: Text("Daftar"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            )
          ],
        ),
      ),
    );
  }
}