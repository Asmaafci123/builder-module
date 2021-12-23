import 'package:dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NewModule());
}

class NewModule extends StatelessWidget {
  const NewModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}

