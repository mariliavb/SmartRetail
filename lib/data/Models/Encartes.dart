class Encartes {
  int idEncarte;

  Encartes({this.idEncarte});

  Encartes.fromJson(Map<String, dynamic> json) {
    idEncarte = json['IdEncarte'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdEncarte'] = this.idEncarte;
    return data;
  }
}
