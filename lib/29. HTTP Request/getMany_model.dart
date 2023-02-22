import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;

class GetMany {
  final String? id;
  final String? fullName;
  final String? email;
  final String? avatar;

  GetMany({this.id, this.fullName, this.email, this.avatar});

  // membuat object dari post dari json object yang merupakan hasil mapping dari json
  factory GetMany.getUser(Map<String, dynamic> json) {
    return GetMany(
      id: json['id'].toString(),
      fullName: json['first_name'] + " " + json['last_name'],
      email: json['email'],
      avatar: json['avatar'],
    );
  }

  // method untuk menghubungkan aplikasi dengan API (API = Application Programming Interface)
  static Future<List<GetMany>> connectToAPI(String number) async {
    // menghubungkan aplikasi dengan API
    String apiURL = "https://reqres.in/api/users?page=$number";
    // mengirim data ke API
    var apiResult = await http.get(Uri.parse(apiURL));
    // mengambil data dari API
    var jsonObject = (jsonDecode(apiResult.body));
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    List<GetMany> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(GetMany.getUser(listUser[i]));
    }
    // mengembalikan nilai dari method
    return users;
  }
}
