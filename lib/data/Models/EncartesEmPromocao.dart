class EncartesEmPromocao {
  int idEncarte;
  String nomeStr;

  EncartesEmPromocao({this.idEncarte, this.nomeStr});

  EncartesEmPromocao.fromJson(Map<String, dynamic> json) {
    idEncarte = json['IdEncarte'];
    nomeStr = json['NomeStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdEncarte'] = this.idEncarte;
    data['NomeStr'] = this.nomeStr;
    return data;
  }
}