class CustomerModel {
  bool? success;
  String? message;
  List<Data>? data;

  CustomerModel({this.success, this.message, this.data});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? kode;
  String? nama;
  String? alamat;
  String? email;
  String? telepon;

  Data(
      {this.id,
      this.kode,
      this.nama,
      this.alamat,
      this.email,
      this.telepon});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kode = json['kode'];
    nama = json['nama'];
    alamat = json['alamat'];
    email = json['email'];
    telepon = json['telepon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kode'] = this.kode;
    data['nama'] = this.nama;
    data['alamat'] = this.alamat;
    data['email'] = this.email;
    data['telepon'] = this.telepon;
    return data;
  }
}
