// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CartaoModel {
  String id;
  String number;
  String nome;
  String melhorDiaDeCompra;
  double limiteDisponivel;
  double limiteTotal;
  String bandeira;
  String? cor;

  CartaoModel({
    required this.id,
    required this.number,
    required this.nome,
    required this.melhorDiaDeCompra,
    required this.limiteDisponivel,
    required this.limiteTotal,
    required this.bandeira,
    this.cor,
  });

  CartaoModel copyWith({
    String? id,
    String? number,
    String? nome,
    String? melhorDiaDeCompra,
    double? limiteDisponivel,
    double? limiteTotal,
    String? bandeira,
    String? cor,
  }) {
    return CartaoModel(
      id: id ?? this.id,
      number: number ?? this.number,
      nome: nome ?? this.nome,
      melhorDiaDeCompra: melhorDiaDeCompra ?? this.melhorDiaDeCompra,
      limiteDisponivel: limiteDisponivel ?? this.limiteDisponivel,
      limiteTotal: limiteTotal ?? this.limiteTotal,
      bandeira: bandeira ?? this.bandeira,
      cor: cor ?? this.cor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'number': number,
      'nome': nome,
      'melhorDiaDeCompra': melhorDiaDeCompra,
      'limiteDisponivel': limiteDisponivel,
      'limiteTotal': limiteTotal,
      'bandeira': bandeira,
      'cor': cor,
    };
  }

  factory CartaoModel.fromMap(Map<String, dynamic> map) {
    return CartaoModel(
      id: map['id'] as String,
      number: map['number'] as String,
      nome: map['nome'] as String,
      melhorDiaDeCompra: map['melhorDiaDeCompra'] as String,
      limiteDisponivel: map['limiteDisponivel'] as double,
      limiteTotal: map['limiteTotal'] as double,
      bandeira: map['bandeira'] as String,
      cor: map['cor'] != null ? map['cor'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartaoModel.fromJson(String source) => CartaoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CartaoModel(id: $id, number: $number, nome: $nome, melhorDiaDeCompra: $melhorDiaDeCompra, limiteDisponivel: $limiteDisponivel, limiteTotal: $limiteTotal, bandeira: $bandeira, cor: $cor)';
  }

  @override
  bool operator ==(covariant CartaoModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.number == number &&
        other.nome == nome &&
        other.melhorDiaDeCompra == melhorDiaDeCompra &&
        other.limiteDisponivel == limiteDisponivel &&
        other.limiteTotal == limiteTotal &&
        other.bandeira == bandeira &&
        other.cor == cor;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        number.hashCode ^
        nome.hashCode ^
        melhorDiaDeCompra.hashCode ^
        limiteDisponivel.hashCode ^
        limiteTotal.hashCode ^
        bandeira.hashCode ^
        cor.hashCode;
  }

  static CartaoModel defaultCartao = CartaoModel(
    id: '1',
    number: '1234 5678 9012 3456',
    nome: 'Nome do Titular',
    melhorDiaDeCompra: '10',
    limiteDisponivel: 1000,
    limiteTotal: 2000,
    bandeira: 'Mastercard',
  );

  String get ultimosDigitos => number.substring(number.length - 4);
  String get numeroMascarado => '**** **** **** $ultimosDigitos';
}
