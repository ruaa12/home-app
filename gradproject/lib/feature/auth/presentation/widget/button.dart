import 'package:flutter/material.dart';
import 'package:gradproject/feature/home/prasntation/widget/const.dart';


class Button extends StatelessWidget {
   Button({super.key,

 required this.ontap ,
 required this.name,
 

  });
    
final String? name;
 final VoidCallback? ontap;
  

  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: color3,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            name!
            ,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
      // GestureDetector(
    //         style: ElevatedButton.styleFrom(
    //           backgroundColor: Color(0xff0054A5),
    //           foregroundColor: Colors.white,
    //           shape:const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    //           fixedSize: Size(270, 60)
    //         ),
    //         onPressed: onpressed,
    //          child:  Text(labelButton,
    //          style: const TextStyle(
    //           fontSize: 20,
    //           fontWeight: FontWeight.bold,
    //          ),));
  }
}