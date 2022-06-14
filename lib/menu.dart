import 'package:flutter/material.dart';

import 'lock.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Menu',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/pics.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Panha',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text('See your profile')
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minWidth: 300,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(Icons.inbox),
                            SizedBox(width: 20),
                            Text(
                              'Inbox',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(height: 5),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minWidth: 300,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(Icons.notifications),
                            SizedBox(width: 20),
                            Text(
                              'Notifications',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(height: 5),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minWidth: 300,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(Icons.visibility_rounded),
                            SizedBox(width: 20),
                            Text(
                              'Recently View',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(height: 5),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minWidth: 300,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(Icons.history),
                            SizedBox(width: 20),
                            Text(
                              'Hire History',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(height: 5),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minWidth: 300,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(Icons.history),
                            SizedBox(width: 20),
                            Text(
                              'Work History',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(height: 5),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minWidth: 300,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(Icons.save),
                            SizedBox(width: 20),
                            Text(
                              'Saved',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minWidth: 300,
                        height: 50,
                        color: Colors.cyan,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.error_outline_rounded,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Help & Support',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(width: 80),
                            Icon(
                              Icons.expand_more_outlined,
                              size: 30,
                            )
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(height: 5),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minWidth: 300,
                        height: 50,
                        color: Colors.cyan,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.settings_outlined,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Help & Support',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(width: 80),
                            Icon(
                              Icons.expand_more_outlined,
                              size: 30,
                            )
                          ],
                        ),
                        onPressed: () {}),
                    const SizedBox(height: 5),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minWidth: 300,
                        height: 50,
                        color: Colors.cyan,
                        child: Row(
                          children: const [
                            SizedBox(width: 110),
                            Text(
                              'LOG OUT',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Lock()),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
