import 'package:flutter/material.dart';
import 'slot_machine.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, contraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: contraints.maxWidth,
                    minHeight: contraints.maxHeight,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: SlotMachine(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}