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
        children: const <Widget>[
          Text(
            'GET REQUEST',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontFamily: "Monument",
            ),
          ),
          SizedBox(height: 20),
          
          UserCard("12", "Teguh Dwi Cahya Kusuma", "teguh.dc.kusuma@gmail.com",
              "https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg")
        ],
      ),
    );
  }
}
