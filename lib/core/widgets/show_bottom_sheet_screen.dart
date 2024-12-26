import 'package:flutter/material.dart';

class ShowBottomSheetScreen extends StatelessWidget {
  const ShowBottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Modal & Persistent Bottom Sheets')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Button to show Modal Bottom Sheet
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      height: 200,
                      child: const Center(
                        child: Text(
                          'This is a Modal Bottom Sheet',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
            // Button to show Persistent Bottom Sheet
            Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.all(16),
                          height: 200,
                          color: Colors.blueGrey[100],
                          child: const Center(
                            child: Text(
                              'This is a Persistent Bottom Sheet',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Show Persistent Bottom Sheet'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
