import 'package:flutter/material.dart';

class NewExpanse extends StatefulWidget {
  const NewExpanse({Key? key}) : super(key: key);

  @override
  State<NewExpanse> createState() => _NewExpanseState();
}

class _NewExpanseState extends State<NewExpanse> {
  
  var _enterdTitle = '';
  void _saveTitleInput(String inputValue) {
    _enterdTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_enterdTitle);
                },
                child: const Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
