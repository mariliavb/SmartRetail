class TipoProduto {
  int idTipoProduto;
  String nomeTipoProdutoStr;
  Null nomeStr;

  TipoProduto({this.idTipoProduto, this.nomeTipoProdutoStr, this.nomeStr});

  TipoProduto.fromJson(Map<String, dynamic> json) {
    idTipoProduto = json['IdTipoProduto'];
    nomeTipoProdutoStr = json['NomeTipoProdutoStr'];
    nomeStr = json['NomeStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdTipoProduto'] = this.idTipoProduto;
    data['NomeTipoProdutoStr'] = this.nomeTipoProdutoStr;
    data['NomeStr'] = this.nomeStr;
    return data;
  }
}
