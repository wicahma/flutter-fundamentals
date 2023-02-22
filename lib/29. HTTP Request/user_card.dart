import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserCard extends StatelessWidget {
  final String? id;
  final String? fullName;
  final String? email;
  final String? avatar;

  const UserCard(String this.id, String this.fullName, String this.email,
      String this.avatar,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 100,
          height: 100,
          child: Image(
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            image: NetworkImage(avatar!),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Text>[
            Text(
              'ID: ${id!}',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                fontFamily: "Monument",
              ),
            ),
            Text(
              'Nama: ${fullName!}',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                fontFamily: "Monument",
              ),
            ),
            Text(
              'email: ${email!}',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                fontFamily: "Monument",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
