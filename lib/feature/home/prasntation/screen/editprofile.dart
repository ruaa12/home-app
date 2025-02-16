import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:gradproject/feature/auth/presentation/widget/button.dart';
import 'package:gradproject/feature/home/prasntation/screen/profile.dart';
import 'package:gradproject/feature/home/prasntation/widget/custom_text_field1.dart';


class EditProfile extends StatelessWidget {
    static String id = 'editprofile';

  EditProfile({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
          
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(children: [
          Column(children: [
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/profile-circle-icon-2048x2048-cqe5466q.png'),
              maxRadius: 65,
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              child: Text(
                'User name',
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
              label: 'enter name',
              labelText: 'enter name',
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              child: Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              alignment: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              validator: (value) {
                if (value!.contains('@gmail.com')) {
                  return null;
                } else {
                  return 'Please Add A Valid E-mail';
                }
              },
              label: 'Email',
              labelText: 'Email',
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              child: Text(
                'country',
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
                  return 'Please Add A Valid user country';
                }
              },
              label: 'Country',
              labelText: 'Country',
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              child: Text(
                'phone number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              alignment: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              validator: (value) {
                if (value!.length == 10) {
                  return null;
                } else {
                  return 'Please Add A Valid user name';
                }
              },
              label: 'phone number',
              labelText: 'phone number',
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
                name: 'Save'),
          ])
        ]),
      ),
    );
  }
}
