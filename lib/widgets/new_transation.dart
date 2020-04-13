import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'Text Hint',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
              // onChanged: (val) {
              //   this.titleInput = val;
              // },
              controller: this.titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val) {
              //   this.amountInput = val;
              // },
              controller: this.amountController,
            ),
            FlatButton(
              textColor: Colors.purple,
              child: Text('Add Transaction'),
              onPressed: () {
                // print(this.titleInput);
                // print(this.amountInput);
                print(this.titleController.text);
                print(this.amountController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
