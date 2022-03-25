class BarangMasukModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangMasukModel({this.success, this.message, this.data});

  BarangMasukModel.fromJson(Map<String, dynamic> json) {
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
  int? idSupplier;
  int? idBarang;
  int? jumlahPemasukan;
  String? tglMasuk;

  Data(
      {this.id,
      this.idSupplier,
      this.idBarang,
      this.jumlahPemasukan,
      this.tglMasuk});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idSupplier = json['id_supplier'];
    idBarang = json['id_barang'];
    jumlahPemasukan = json['jumlah_pemasukan'];
    tglMasuk = json['tgl_masuk'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_supplier'] = this.idSupplier;
    data['id_barang'] = this.idBarang;
    data['jumlah_pemasukan'] = this.jumlahPemasukan;
    data['tgl_masuk'] = this.tglMasuk;
    return data;
  }
}
