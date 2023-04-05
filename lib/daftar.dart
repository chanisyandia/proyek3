import 'package:flutter/material.dart';
import './page-data-diri.dart';
import './page-login.dart';

void main() {
  runApp(Daftar());
}

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  String _selectedGender = 'Laki Laki';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DataDiri(),
                      ));
                    });
                  },
                  child: Row(
                    children: [Icon(Icons.arrow_back), Text("Kembali")],
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "REGISTER",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            formRegister(label: "Email"),
            SizedBox(
              height: 20,
            ),
            formRegister(label: "No telepon"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                   setState(() {
                     Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
                  });
                },
                child: Text(
                  "Daftar",
                  style: TextStyle(fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class formRegister extends StatelessWidget {
  formRegister({required this.label});

  late String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      child: TextField(
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          labelText: label,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
