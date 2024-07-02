import 'package:flutter/material.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Note'),
      ),
      body: Center(
        child: Text(
          'Add',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
