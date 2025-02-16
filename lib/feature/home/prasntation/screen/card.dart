import 'package:flutter/material.dart';
import 'package:gradproject/feature/auth/presentation/widget/button.dart';
import 'package:gradproject/feature/home/prasntation/screen/profile.dart';
import 'package:gradproject/feature/home/prasntation/widget/custom_text_field1.dart';

class CardScreen extends StatelessWidget {
    static String id = 'card';

  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add new card',
        ),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.arrow_back)],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(children: [
          Column(
            children: [
              const Align(
                child: Text(
                  'Card',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                  validator: (value) {
                    if (value!.length >= 8) {
                      return null;
                    } else {
                      return 'Please Add A Valid user name';
                    }
                  },
                  label: 'Credit card',
                  labelText: 'Credit card '),
              const SizedBox(
                height: 30,
              ),
              const Align(
                child: Text(
                  'card num',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                  validator: (value) {
                    if (value!.length >= 8) {
                      return null;
                    } else {
                      return 'Please Add A Valid user name';
                    }
                  },
                  label: 'enter 8 degits number',
                  labelText: 'enter 8 degits number'),
              const SizedBox(
                height: 30,
              ),
              const Align(
                child: Text(
                  'card date',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                  validator: (value) {
                    if (value!.length >= 8) {
                      return null;
                    } else {
                      return 'Please Add A Valid user name';
                    }
                  },
                  label: 'enter date',
                  labelText: 'enter date'),
              const SizedBox(
                height: 30,
              ),
              const Align(
                child: Text(
                  'credit name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'enter name ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Button(
                  ontap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                  },
                  name: 'Save')
            ],
          ),
        ]),
      ),
    );
  }
}
