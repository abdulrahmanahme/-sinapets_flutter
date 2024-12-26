
import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align & FractionallySizedBox Example'),
      ),
      body: Column(
        children: [
          // Align Example
          const Text(
            'Align Example:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.grey[300],
            height: 200,
            width: 200,
            child: Align(
              alignment: Alignment(0.5, 0.7), // Positioned at 50% width & height
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // FractionallySizedBox Example
          const Text(
            'FractionallySizedBox Example:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.grey[300],
            height: 400,
            width: double.maxFinite,
            child: FractionallySizedBox(
              widthFactor: 0.7, // 50% width of parent
              heightFactor: 0.5, // 50% height of parent
              alignment: Alignment.bottomLeft, // Center alignment
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}