import 'package:smart_retail/data/Models/Encartes.dart';
import 'package:smart_retail/data/Models/Estoques.dart';
import 'package:smart_retail/data/Models/ImagemPrincipal.dart';

class PromocoesGerais {
  int idPromocao;
  int idEntrega;
  String terminoDate;
  double precoDoub;
  List<Estoques> estoques;
  List<Encartes> encartes;
  ImagemPrincipal imagemPrincipal;

  PromocoesGerais(
      {this.idPromocao,
        this.idEntrega,
        this.terminoDate,
        this.precoDoub,
        this.estoques,
        this.encartes,
        this.imagemPrincipal});

  PromocoesGerais.fromJson(Map<String, dynamic> json) {
    idPromocao = json['IdPromocao'];
    idEntrega = json['IdEntrega'];
    terminoDate = json['TerminoDate'];
    precoDoub = json['PrecoDoub'];
    if (json['Estoques'] != null) {
      estoques = new List<Estoques>();
      json['Estoques'].forEach((v) {
        estoques.add(new Estoques.fromJson(v));
      });
    }
    if (json['Encartes'] != null) {
      encartes = new List<Encartes>();
      json['Encartes'].forEach((v) {
        encartes.add(new Encartes.fromJson(v));
      });
    }
    imagemPrincipal = json['ImagemPrincipal'] != null
        ? new ImagemPrincipal.fromJson(json['ImagemPrincipal'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdPromocao'] = this.idPromocao;
    data['IdEntrega'] = this.idEntrega;
    data['TerminoDate'] = this.terminoDate;
    data['PrecoDoub'] = this.precoDoub;
    if (this.estoques != null) {
      data['Estoques'] = this.estoques.map((v) => v.toJson()).toList();
    }
    if (this.encartes != null) {
      data['Encartes'] = this.encartes.map((v) => v.toJson()).toList();
    }
    if (this.imagemPrincipal != null) {
      data['ImagemPrincipal'] = this.imagemPrincipal.toJson();
    }
    return data;
  }
}