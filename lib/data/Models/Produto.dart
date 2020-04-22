import 'package:smart_retail/data/Models/TipoProduto.dart';

class Produto {
  int idProduto;
  String nomeStr;
  TipoProduto tipoProduto;

  Produto({this.idProduto, this.nomeStr, this.tipoProduto});

  Produto.fromJson(Map<String, dynamic> json) {
    idProduto = json['IdProduto'];
    nomeStr = json['NomeStr'];
    tipoProduto = json['TipoProduto'] != null
        ? new TipoProduto.fromJson(json['TipoProduto'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdProduto'] = this.idProduto;
    data['NomeStr'] = this.nomeStr;
    if (this.tipoProduto != null) {
      data['TipoProduto'] = this.tipoProduto.toJson();
    }
    return data;
  }
}