import 'package:flutter/material.dart';

class CustomRowOfTimer extends StatelessWidget {
  const CustomRowOfTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
          child: const Icon(Icons.pause,size: 25,),
        ),
        const Text("00:07:30",style: TextStyle(fontSize: 20,color: Colors.white),),
        const Icon(Icons.close,size: 35,color: Colors.white,)
      ],
    );
  }
}