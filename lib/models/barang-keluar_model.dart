class BarangKeluarModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangKeluarModel({this.success, this.message, this.data});

  BarangKeluarModel.fromJson(Map<String, dynamic> json) {
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
  int? idCustomer;
  int? idBarang;
  int? jumlahPengiriman;
  int? hargaSatuan;
  String? tujuan;
  String? tglPengiriman;

  Data(
      {this.id,
      this.idCustomer,
      this.idBarang,
      this.jumlahPengiriman,
      this.hargaSatuan,
      this.tujuan,
      this.tglPengiriman});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idCustomer = json['id_customer'];
    idBarang = json['id_barang'];
    jumlahPengiriman = json['jumlah_pengiriman'];
    hargaSatuan = json['harga_satuan'];
    tujuan = json['tujuan'];
    tglPengiriman = json['tgl_pengiriman'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_customer'] = this.idCustomer;
    data['id_barang'] = this.idBarang;
    data['jumlah_pengiriman'] = this.jumlahPengiriman;
    data['harga_satuan'] = this.hargaSatuan;
    data['tujuan'] = this.tujuan;
    data['tgl_pengiriman'] = this.tglPengiriman;
    return data;
  }
}
