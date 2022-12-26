import 'package:appt/lists/customer_class.dart';

import 'package:flutter/material.dart';

class ListCus extends StatefulWidget {
  const ListCus({super.key});

  @override
  State<ListCus> createState() => _ListCusState();
}

class _ListCusState extends State<ListCus> {
  final List<CustomerList> _userInput = [
    CustomerList(
      Name: 'harsh',
      Number: 968234832,
    ),
    CustomerList(
      Name: 'ronak',
      Number: 723722343,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userInput.map((ul) {
        return Card(
            child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "hello",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    ul.Name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Text(
                    ul.Number.toString(),
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
