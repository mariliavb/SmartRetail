import 'package:smart_retail/data/Models/CategoriasEmPromocao.dart';
import 'package:smart_retail/data/Models/EncartesEmPromocao.dart';
import 'package:smart_retail/data/Models/PromocoesGerais.dart';

class Data {
  List<PromocoesGerais> promocoesGerais;
  List<CategoriasEmPromocao> categoriasEmPromocao;
  List<EncartesEmPromocao> encartesEmPromocao;
  int totalPromocoes;

  Data(
      {this.promocoesGerais,
        this.categoriasEmPromocao,
        this.encartesEmPromocao,
        this.totalPromocoes});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['promocoesGerais'] != null) {
      promocoesGerais = new List<PromocoesGerais>();
      json['promocoesGerais'].forEach((v) {
        promocoesGerais.add(new PromocoesGerais.fromJson(v));
      });
    }
    if (json['categoriasEmPromocao'] != null) {
      categoriasEmPromocao = new List<CategoriasEmPromocao>();
      json['categoriasEmPromocao'].forEach((v) {
        categoriasEmPromocao.add(new CategoriasEmPromocao.fromJson(v));
      });
    }
    if (json['encartesEmPromocao'] != null) {
      encartesEmPromocao = new List<EncartesEmPromocao>();
      json['encartesEmPromocao'].forEach((v) {
        encartesEmPromocao.add(new EncartesEmPromocao.fromJson(v));
      });
    }
    totalPromocoes = json['totalPromocoes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.promocoesGerais != null) {
      data['promocoesGerais'] =
          this.promocoesGerais.map((v) => v.toJson()).toList();
    }
    if (this.categoriasEmPromocao != null) {
      data['categoriasEmPromocao'] =
          this.categoriasEmPromocao.map((v) => v.toJson()).toList();
    }
    if (this.encartesEmPromocao != null) {
      data['encartesEmPromocao'] =
          this.encartesEmPromocao.map((v) => v.toJson()).toList();
    }
    data['totalPromocoes'] = this.totalPromocoes;
    return data;
  }
}
