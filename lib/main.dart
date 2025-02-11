import 'package:flutter/material.dart'; //phải import cái này flutter mới chạy

import 'package:dice_roll_app/gradient_container.dart'; //import class tự tạo

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
        Color.fromARGB(255, 203, 158, 34), 
        Color.fromARGB(255, 12, 49, 142)),
      ),
    ),
  );
}

