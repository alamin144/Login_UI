import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Catageroy extends StatefulWidget {
  const Catageroy({super.key});

  @override
  State<Catageroy> createState() => _CatageroyState();
}

class _CatageroyState extends State<Catageroy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
      ),
    );
  }
}
