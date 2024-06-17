// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cartao_gs3/common/enums/categoria_enums.dart';

class LancamentosModel {
  final String id;
  final String titulo;
  final DateTime datetime;
  final double valor;
  final int parcelas;
  final Categoria categoria;
  LancamentosModel({
    required this.id,
    required this.titulo,
    required this.datetime,
    required this.valor,
    required this.parcelas,
    required this.categoria,
  });

  LancamentosModel copyWith({
    String? id,
    String? titulo,
    DateTime? datetime,
    double? valor,
    int? parcelas,
    Categoria? categoria,
  }) {
    return LancamentosModel(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      datetime: datetime ?? this.datetime,
      valor: valor ?? this.valor,
      parcelas: parcelas ?? this.parcelas,
      categoria: categoria ?? this.categoria,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'titulo': titulo,
      'datetime': datetime.millisecondsSinceEpoch,
      'valor': valor,
      'parcelas': parcelas,
      'categoria': categoria.name,
    };
  }

  factory LancamentosModel.fromMap(Map<String, dynamic> map) {
    return LancamentosModel(
      id: map['id'] as String,
      titulo: map['titulo'] as String,
      datetime: DateTime.fromMillisecondsSinceEpoch(map['datetime'] as int),
      valor: map['valor'] as double,
      parcelas: map['parcelas'] as int,
      categoria: fromStringToCategoria(map['categoria']) ?? Categoria.gasto,
    );
  }

  String toJson() => json.encode(toMap());

  factory LancamentosModel.fromJson(String source) => LancamentosModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LancamentosModel(id: $id, titulo: $titulo, datetime: $datetime, valor: $valor, parcelas: $parcelas, categoria: $categoria)';
  }

  @override
  bool operator ==(covariant LancamentosModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.titulo == titulo &&
        other.datetime == datetime &&
        other.valor == valor &&
        other.parcelas == parcelas &&
        other.categoria == categoria;
  }

  @override
  int get hashCode {
    return id.hashCode ^ titulo.hashCode ^ datetime.hashCode ^ valor.hashCode ^ parcelas.hashCode ^ categoria.hashCode;
  }
}
