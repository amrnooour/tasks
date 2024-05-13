import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomRowOfTimer extends StatelessWidget {
  void Function()? onTap;
  int hours;
  int minutes;
  int seconds;
  IconData? icon;
  CustomRowOfTimer({super.key,required this.hours,required this.minutes,required this.seconds,this.icon,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
          child:  GestureDetector(
            onTap: onTap,
            child: Icon(icon,size: 25,)),
        ),
         Column(children: [
          Text("$hours:$minutes:$seconds",style: const TextStyle(fontSize: 25,color: Colors.white),),
          const SizedBox(height: 20,),
        ] ),
        const Icon(Icons.close,size: 35,color: Colors.white,)
      ],
    );
  }
}