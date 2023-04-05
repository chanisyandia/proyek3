import 'package:flutter/material.dart';
import 'package:proyek3/daftar.dart';
import './page-login.dart';

// void main() {
//   runApp(DataDiri());
// }

class DataDiri extends StatelessWidget {
  const DataDiri({super.key});

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
  String _selectedGender = 'Laki Laki';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      builder: (context) => Login(),
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
            formRegister(label: "Nama lengkap"),
            SizedBox(
              height: 20,
            ),
            formRegister(label: "NIK/SIM/Paspor"),
            SizedBox(
              height: 20,
            ),
            formRegister(label: "Tempat Lahir"),
            SizedBox(
              height: 20,
            ),
            formRegister(label: "Tanggal Lahir"),
            SizedBox(
              height: 20,
            ),
            formRegister(label: "Alamat Lengkap"),
            SizedBox(
              height: 20,
            ),
            formRegister(label: "Kewarganegaraan"),
            SizedBox(
              height: 20,
            ),
            formRegister(label: "Pekerjaan"),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Radio<String>(
                  value: 'Laki Laki',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('Laki Laki'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Radio<String>(
                  value: 'Perempuan',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('Perempuan'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                     Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Daftar(),
                    ));
                  });
                },
                child: Text(
                  "Lanjut",
                  style: TextStyle(fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
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
        // textInputAction: TextInputAction.next,
        textInputAction: (label == 'Pekerjaan') ? TextInputAction.done : TextInputAction.next,
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
