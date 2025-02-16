import 'package:flutter/material.dart';
import 'package:gradproject/feature/home/prasntation/screen/editprofile.dart';
import 'package:gradproject/feature/home/prasntation/screen/log_out.dart';
import 'package:gradproject/feature/home/prasntation/screen/payment.dart';
import 'package:gradproject/feature/home/prasntation/screen/support.dart';


class ProfileScreen extends StatefulWidget {
    static String id = 'myProfile';

  const ProfileScreen({super.key});
  

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('My profile'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new)),
      ),
      
      body: Stack(children: [
        Center(
            child: Column(children: [
          const SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfile(),
                  ));
            },
            child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                padding: const EdgeInsets.only(left: 15, right: 20),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/images/Rectangle 2113.png',),
                    const SizedBox(width: 10),
                    const Text(
                      'Edit profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.edit, color: Colors.black, size: 24),
                  ],
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(left: 15, right: 20),
              width: double.infinity,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const paymentscreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/images/Rectangle 2113 (2).png'),
                    const SizedBox(width: 10),
                    const Text(
                      'payment',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                   const SizedBox(width: 10),
                    const Icon(Icons.chevron_right, color: Colors.black, size: 24),
                  ],
                ),
              )),
          const SizedBox( height: 15,),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            padding: const EdgeInsets.only(left: 15, right: 20),
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              boxShadow:const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const supportscreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/images/Rectangle 2113 (3).png'),
                    const SizedBox(width: 10),
                    const Text(
                      'Help & support',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                   const SizedBox(width: 10),
                   const Icon(Icons.chevron_right, color: Colors.black, size: 24),
                  ],
                )),
          ),
         const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            padding:const EdgeInsets.only(left: 15, right: 20),
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              boxShadow:const [
                 BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const logoutscreen(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/images/Rectangle 2113 (4).png'),
                 const SizedBox(width: 10),
                 const Text(
                    'log out',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                 const SizedBox(width: 10),
                 const Icon(Icons.chevron_right, color: Colors.black, size: 24),
                ],
              ),
            ),
          )
        ]))
      ]),
    );
  }
}
