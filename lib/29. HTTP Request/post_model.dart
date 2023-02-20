import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  final String? id;
  final String? name;
  final String? job;
  final String? created;

  Post({this.id, this.name, this.job, this.created});

  // membuat object dari post dari json object yang merupakan hasil mapping dari json
  factory Post.createPost(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      created: json['createdAt'],
    );
  }

  // method untuk menghubungkan aplikasi dengan API (API = Application Programming Interface)
  static Future<Post> connectToAPI(String name, String job) async {
    // menghubungkan aplikasi dengan API
    String apiURL = "https://reqres.in/api/users";
    // mengirim data ke API
    var apiResult =
        await http.post(Uri.parse(apiURL), body: {"name": name, "job": job});
    // mengambil data dari API
    var jsonObject = jsonDecode(apiResult.body);
    // mengembalikan nilai dari method
    return Post.createPost(jsonObject);
  }
}
