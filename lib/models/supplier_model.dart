class SupplierModel {
  bool? success;
  String? message;
  List<Data>? data;

  SupplierModel({this.success, this.message, this.data});

  SupplierModel.fromJson(Map<String, dynamic> json) {
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
  String? namaSupplier;
  String? alamat;
  String? noTelp;
  String? namaPerusahaan;
  Null? createdAt;
  Null? updatedAt;

  Data(
      {this.id,
      this.kode,
      this.namaSupplier,
      this.alamat,
      this.noTelp,
      this.namaPerusahaan,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kode = json['kode'];
    namaSupplier = json['nama_supplier'];
    alamat = json['alamat'];
    noTelp = json['no_telp'];
    namaPerusahaan = json['nama_perusahaan'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kode'] = this.kode;
    data['nama_supplier'] = this.namaSupplier;
    data['alamat'] = this.alamat;
    data['no_telp'] = this.noTelp;
    data['nama_perusahaan'] = this.namaPerusahaan;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
