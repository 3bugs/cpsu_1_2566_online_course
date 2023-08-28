import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Promlert Lovichit',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //SizedBox(width: 8.0),
                        Image.asset(
                          'assets/images/hand_wave.png',
                          width: 40.0,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 45.0,
                  height: 45.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text('Courses', style: TextStyle(fontSize: 26.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม All Topics
                        Expanded(
                          child: CategoryButton(
                            text: 'All Topics',
                            icon: Icons.water_drop,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Popular
                        Expanded(
                          child: CategoryButton(
                            text: 'Popular',
                            icon: Icons.bolt,
                            color: Colors.pink,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม Newest
                        Expanded(
                          child: CategoryButton(
                            text: 'Newest',
                            icon: Icons.star,
                            color: Colors.orange,
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Advanced
                        Expanded(
                          child: CategoryButton(
                            text: 'Advanced',
                            icon: Icons.bookmark,
                            color: Colors.green,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('TEST'),
                        ),
                      ),
                    ),
                  ),

                  CategoryButton(text: 'xxx', icon: Icons.abc , color: Colors.purple , isSelected: true)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

