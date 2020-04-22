class ImagemPrincipal {
  int idImagem;
  String nomeStr;

  ImagemPrincipal({this.idImagem, this.nomeStr});

  ImagemPrincipal.fromJson(Map<String, dynamic> json) {
    idImagem = json['IdImagem'];
    nomeStr = json['NomeStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdImagem'] = this.idImagem;
    data['NomeStr'] = this.nomeStr;
    return data;
  }
}