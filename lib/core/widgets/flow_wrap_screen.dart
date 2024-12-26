import 'package:flutter/material.dart';

class FlowWrapScreen extends StatelessWidget {
  const FlowWrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap vs Flow Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Wrap Example
            const Text(
              'Wrap Example:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10, // Horizontal spacing
              runSpacing: 10, // Vertical spacing
              alignment: WrapAlignment.center,
              children: List.generate(
                10,
                (index) => Chip(label: Text('Item $index')),
              ),
            ),
            const SizedBox(height: 20),

            // Flow Example
            const Text(
              'Flow Example:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100, // Fixed height for Flow
              child: Flow(
                delegate: FlowMenuDelegate(),
                children: List.generate(
                  5,
                  (index) => Container(
                    width: 50,
                    height: 50,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: Text(
                        '$index',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Flow Delegate for positioning
class FlowMenuDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = 0; i < context.childCount; i++) {
      final x = i * 60.0; // Horizontal spacing
      final y = (i.isEven) ? 0.0 : 20.0; // Alternate positioning
      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}