import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/lock.dart';


class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    bool _value = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 50),
                  Text(
                    '  Welcome to WokeMe',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '     Create an account to continue',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(label: Text('   Frist Name')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(label: Text('   Last Name')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration:
                    const InputDecoration(label: Text('   Email Address')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_value,
                decoration: InputDecoration(
                  labelText:'   Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _value = !_value;
                      });
                    },
                    icon: Icon(_value ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: MaterialButton(
                  color: Colors.cyan,
                  minWidth: 300,
                  height: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 20),
                  ),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Center(child: const Text('     or Sign Up using      ')),
                ),
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Facebook'),
                SizedBox(width: 50),
                Text('Gmail')
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have account?',
                  style: TextStyle(color: Colors.black),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Lock()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {
}
