import 'package:first_app/29.%20HTTP%20Request/post_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostTab extends StatefulWidget {
  const PostTab({super.key});

  @override
  State<PostTab> createState() => PostTabState();
}

class PostTabState extends State<PostTab> {
  Post? postResult;
  final _textControllersNama = TextEditingController();
  final _textControllersJob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              const Text(
                'POST REQUEST',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Monument",
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: TextFormField(
                  key: const Key("name"),
                  controller: _textControllersNama,
                  onChanged: (value) => setState(() {}),
                  maxLength: 50,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    labelText: "Name",
                    counterText: "",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: TextFormField(
                  key: const Key("job"),
                  maxLength: 20,
                  onChanged: (value) => setState(() {}),
                  controller: _textControllersJob,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    labelText: "Job",
                    counterText: "",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Text(
                "data : ${_textControllersJob.text} | ${_textControllersNama.text}",
                textAlign: TextAlign.start,
              ),
            ])),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              Post.connectToAPI(
                      _textControllersNama.text, _textControllersJob.text)
                  .then((value) {
                postResult = value;
                setState(() {});
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            ),
            child: const Text("POST")),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          decoration: BoxDecoration(
              color: Colors.amber.shade800,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Text(
              (postResult != null)
                  ? "${postResult?.id.toString()} | ${postResult?.name!} | ${postResult?.job!}"
                  : "No Data",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500)),
        ),
      ]),
    );
  }
}
