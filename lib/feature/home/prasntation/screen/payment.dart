import 'package:flutter/material.dart';
import 'package:gradproject/feature/auth/presentation/widget/button.dart';
import 'package:gradproject/feature/home/prasntation/screen/card.dart';
import 'package:gradproject/feature/home/prasntation/screen/profile.dart';

class paymentscreen extends StatelessWidget {
    static String id = 'payment';

  const paymentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'payment',
          ),
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.arrow_back)],
          ),
        ),
        body: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Stack(children: [
              Text(
                'select payment method',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                textAlign: TextAlign.left,
              ),
              Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          padding: EdgeInsets.only(left: 15, right: 20),
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
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
                              Image.asset('assets/images/image 51.png'),
                              SizedBox(width: 10),
                              Text(
                                'Bank account ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.check, color: Colors.black, size: 24),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          padding: EdgeInsets.only(left: 15, right: 20),
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
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
                              Image.asset('assets/images/image 51 (1).png'),
                              SizedBox(width: 10),
                              Text(
                                'Cach syriatel ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.check, color: Colors.black, size: 24),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CardScreen(),
                            ));
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          padding: EdgeInsets.only(left: 15, right: 20),
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.add, color: Colors.blue, size: 24),
                              SizedBox(width: 10),
                              Text(
                                'Add new card',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 60,
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
                  ]))
            ])));
  }
}
