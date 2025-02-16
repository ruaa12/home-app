import 'package:flutter/material.dart';
import 'package:gradproject/feature/auth/presentation/widget/button.dart';
import 'package:gradproject/feature/home/prasntation/screen/profile.dart';
import 'package:gradproject/feature/home/prasntation/widget/custom_text_field1.dart';


class supportscreen extends StatelessWidget {
    static String id = 'support';

  const supportscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'help & support',
        ),
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.arrow_back)],
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/image 158.png'),
              const SizedBox(
                height: 30,
              ),
              const Text('Hello, how can we assist you?'),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    const Align(
                      child:
                       Text('Title',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomTextField(
                        validator: (value) {
                          if (value!.length >= 8) {
                            return null;
                          } else {
                            return 'Please Add A Valid user name';
                          }
                        },
                        label: 'Enter the title of your issue',
                        labelText: 'Enter the title of your issue'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      child: Text(
                        'Write in bellow box',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomTextField(
                      validator: (value) {
                        if (value!.length >= 8) {
                          return null;
                        } else {
                          return 'Please Add A Valid user name';
                        }
                      },
                      label: 'Write here...',
                      labelText: 'Write here...',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Button(
                        ontap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ));
                        },
                        name: 'Save'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
