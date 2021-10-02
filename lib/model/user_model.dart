class User {
  int? value;
  String? message;
  String? username;
  String? nama;

  User({this.value, this.message, this.username, this.nama});

  //konversi dari json ke map
  User.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    message = json['message'];
    username = json['username'];
    nama = json['nama'];
  }
}
