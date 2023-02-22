import 'package:first_app/29.%20HTTP%20Request/getMany_model.dart';
import 'package:first_app/29.%20HTTP%20Request/user_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnotherTab extends StatefulWidget {
  const AnotherTab({super.key});

  @override
  State<AnotherTab> createState() => _AnotherTabState();
}

class _AnotherTabState extends State<AnotherTab> {
  String output = "No data";
  List<GetMany> datas = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'ANOTHER REQUEST',
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
                GetMany.connectToAPI(2.toString()).then((value) => {
                      setState(() {
                        datas = value;
                      })
                    });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              ),
              child: const Text("GET")),
          const SizedBox(
            height: 20,
          ),
          (datas.isNotEmpty == true)
              ? Flexible(
                  fit: FlexFit.loose,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: datas.length,
                    itemBuilder: (context, index) {
                      return UserCard(datas[index].id!, datas[index].fullName!,
                          datas[index].email!, datas[index].avatar!);
                    },
                  ),
                )
              : const Text("No Data"),
        ],
      ),
    );
  }
}
