import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DsHome extends StatelessWidget {
  const DsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Ds Home View is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
