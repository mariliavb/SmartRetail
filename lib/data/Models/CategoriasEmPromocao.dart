class CategoriasEmPromocao {
  int idCategoria;
  String nomeStr;

  CategoriasEmPromocao({this.idCategoria, this.nomeStr});

  CategoriasEmPromocao.fromJson(Map<String, dynamic> json) {
    idCategoria = json['IdCategoria'];
    nomeStr = json['NomeStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdCategoria'] = this.idCategoria;
    data['NomeStr'] = this.nomeStr;
    return data;
  }
}
