import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OffsetCustomDropdown extends StatefulWidget {
  @override
  State<OffsetCustomDropdown> createState() => _OffsetCustomDropdownState();
}

class _OffsetCustomDropdownState extends State<OffsetCustomDropdown> {
  String selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        onSelected: (value) {
          print('Selected: $value');
          setState(() {
            selectedValue = value;
          });
        },
        itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              PopupMenuItem(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
              PopupMenuItem(
                value: 'Option 3',
                child: Text('Option 3'),
              ),
            ],
        offset: const Offset(0, 50), // Add offset to position dropdown
        child: PhysicalModel(
          elevation: 1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              selectedValue,
              style: const TextStyle(color: Colors.black),
            ),
          )
        ));
  }
}
