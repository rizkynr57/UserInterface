class BarangModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangModel({this.success, this.message, this.data});

  BarangModel.fromJson(Map<String, dynamic> json) {
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
  String? namaBarang;
  String? jenisBarang;
  int? stokBarang;
  int? harga;
  int? hargaJual;
  String? satuan;
  Null? createdAt;
  Null? updatedAt;

  Data(
      {this.id,
      this.namaBarang,
      this.jenisBarang,
      this.stokBarang,
      this.harga,
      this.hargaJual,
      this.satuan,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaBarang = json['nama_barang'];
    jenisBarang = json['jenis_barang'];
    stokBarang = json['stok_barang'];
    harga = json['harga'];
    hargaJual = json['harga_jual'];
    satuan = json['satuan'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_barang'] = this.namaBarang;
    data['jenis_barang'] = this.jenisBarang;
    data['stok_barang'] = this.stokBarang;
    data['harga'] = this.harga;
    data['harga_jual'] = this.hargaJual;
    data['satuan'] = this.satuan;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
