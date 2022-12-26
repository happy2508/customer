import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../lists/customer_list.dart';

class CustomerPage extends StatelessWidget {
  final NameController = TextEditingController();
  final Numcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Page"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Container(
                child: AlertDialog(
                  title: const Text("Add Customer Detail"),
                  actions: [
                    TextFormField(
                      controller: NameController,
                      decoration: InputDecoration(labelText: 'Customer Name'),
                    ),
                    TextFormField(
                      controller: Numcontroller,
                      decoration: InputDecoration(labelText: 'Contact Number'),
                      keyboardType: TextInputType.number,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Add Customer",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )),
                    )
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(CupertinoIcons.add),
      ),
      body: const ListCus(),
    );
  }
}
