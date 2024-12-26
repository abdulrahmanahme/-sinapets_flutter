import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sinapets_flutter/core/widgets/default_button.dart';
import 'package:sinapets_flutter/core/widgets/default_outlined_button.dart';
import 'package:sinapets_flutter/core/widgets/drow_down_button.dart';

import 'core/app_color.dart';

class ButtonExamplesScreen extends StatefulWidget {
  @override
  State<ButtonExamplesScreen> createState() => _ButtonExamplesScreenState();
}

class _ButtonExamplesScreenState extends State<ButtonExamplesScreen> {
  String dropdownValue = 'Option 1';
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OffsetCustomDropdown(),

              DropdownButton<String>(
                alignment: Alignment.topCenter,
                value: dropdownValue,
                items: <String>['Option 1', 'Option 2', 'Option 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),

              const SizedBox(height: 10),

              // PopupMenuButton
              PopupMenuButton<String>(
                offset: const Offset(40, 45),
                onSelected: (value) {
                  print('Selected: $value');
                },
                itemBuilder: (BuildContext context) {
                  return {'Action 1', 'Action 2', 'Action 3'}
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text('PopupMenuButton'),
                ),
              ),

              const SizedBox(height: 10),

              // ToggleButtons
              ToggleButtons(
                isSelected: isSelected,
                onPressed: (int index) {
                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                  log('ssss ${isSelected[index]}');
                  // log('sss ${!isSelected[index]}');
                },
                children: const [
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
              ),

              const SizedBox(height: 10),

              // BackButton
              Row(
                children: [
                  BackButton(
                    onPressed: () {
                      print('Back button pressed');
                    },
                  ),

                  const SizedBox(height: 10),
                  // CloseButton
                  CloseButton(
                    onPressed: () {
                      print('Close button pressed');
                    },
                  ),
                ],
              ),
              DefaultButton(
                height: 55,
                buttonColor: ColorManager.primary,
                title: 'Test ssssssssssss',
                fontSize: 16,
                textColor: ColorManager.white,
                function: () {},
              ),
              const SizedBox(height: 10),
              DefaultOutlinedButton(
                height: 55,
                buttonColor: ColorManager.primary,
                title: 'Test ',
                fontSize: 16,
                textColor: ColorManager.white,
                function: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
