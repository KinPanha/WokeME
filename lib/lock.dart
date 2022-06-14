import 'package:flutter/material.dart';

import 'create.dart';
import 'home.dart';

class Lock extends StatefulWidget {
  const Lock({Key? key}) : super(key: key);

  @override
  State<Lock> createState() => _LockState();
}

class _LockState extends State<Lock> {
  bool value = false;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 100),
                    Text(
                      '  Welcome to WorkMe',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '   Login to continue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ]),
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
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text('Email address'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_value,
                decoration: InputDecoration(
                  label: const Text('Password'),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _value = !_value;
                      });
                    },
                    icon: Icon(_value
                        ? Icons.visibility
                        : Icons.visibility_off_outlined),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    }),
                const Text(
                  'Remember me',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(width: 120),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            MaterialButton(
              color: Colors.cyan,
              minWidth: 300,
              height: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width: 100,
                    color: Colors.black,
                  ),
                  const Center(child: Text('     or Sign Up using      ')),
                  Container(
                    height: 1,
                    width: 100,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Facebook'),
                SizedBox(width: 50),
                Text('Gamil'),
              ],
            ),
            const SizedBox(height: 40),
            const Center(child: Text('Don’t have account yet?')),
            const SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(280, 50),
                primary: Colors.cyan,
                side: const BorderSide(color: Colors.cyan, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Create()),
                );
              },
              child: const Text('Create an account'),
            ),
          ],
        ),
      ),
    );
  }
}
