import 'dart:math';

import 'package:first_app/29.%20HTTP%20Request/get_model.dart';
import 'package:first_app/29.%20HTTP%20Request/user_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetTab extends StatefulWidget {
  const GetTab({super.key});

  @override
  State<GetTab> createState() => _GetTabState();
}

class _GetTabState extends State<GetTab> {
  Get? getResult;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'GET REQUEST',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontFamily: "Monument",
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.connectToAPI(1.toString()).then((value) {
                  setState(() {
                    getResult = value;
                  });
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              ),
              child: const Text("GET")),
          (getResult != null)
              ? UserCard(getResult!.id!, getResult!.fullName!,
                  getResult!.email!, getResult!.avatar!)
              : const Text("No Data"),
        ],
      ),
    );
  }
}
