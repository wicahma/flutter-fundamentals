import 'dart:convert';
import 'package:http/http.dart' as http;

class Get {
  final String? id;
  final String? fullName;
  final String? email;
  final String? avatar;

  Get({this.id, this.fullName, this.email, this.avatar});

  // membuat object dari post dari json object yang merupakan hasil mapping dari json
  factory Get.getUser(Map<String, dynamic> json) {
    return Get(
      id: json['id'],
      fullName: json['first_name'] + " " + json['last_name'],
      email: json['email'],
      avatar: json['avatar'],
    );
  }

  // method untuk menghubungkan aplikasi dengan API (API = Application Programming Interface)
  static Future<Get> connectToAPI() async {
    // menghubungkan aplikasi dengan API
    String apiURL = "https://reqres.in/api/users?page=2";
    // mengirim data ke API
    var apiResult = await http.get(Uri.parse(apiURL));
    // mengambil data dari API
    var jsonObject =
        (jsonDecode(apiResult.body) as Map<String, dynamic>)['data'];
    // mengembalikan nilai dari method
    return Get.getUser(jsonObject);
  }
}
