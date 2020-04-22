import 'package:smart_retail/data/Models/Produto.dart';

class Estoques {
  int idEstoque;
  Produto produto;

  Estoques({this.idEstoque, this.produto});

  Estoques.fromJson(Map<String, dynamic> json) {
    idEstoque = json['IdEstoque'];
    produto =
    json['Produto'] != null ? new Produto.fromJson(json['Produto']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdEstoque'] = this.idEstoque;
    if (this.produto != null) {
      data['Produto'] = this.produto.toJson();
    }
    return data;
  }
}