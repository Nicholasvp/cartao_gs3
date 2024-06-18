List<List<Map<String, dynamic>>> lancamentosCartoes = [
  lancamentosCartao1,
  lancamentosCartao2,
  lancamentosCartao3,
];

List<Map<String, dynamic>> lancamentosCartao1 = [
  {
    "id": "1",
    "titulo": " Apple",
    "datetime": DateTime.now().subtract(const Duration(days: 1)).millisecondsSinceEpoch,
    "valor": 100.0,
    "parcelas": 1,
    "categoria": "tech",
  },
  {
    "id": "2",
    "titulo": " Exemplo 2",
    "datetime": DateTime.now().subtract(const Duration(days: 1)).millisecondsSinceEpoch,
    "valor": 200.0,
    "parcelas": 2,
    "categoria": "transporte",
  },
  {
    "id": "3",
    "titulo": " Exemplo 3",
    "datetime": DateTime.now().subtract(const Duration(days: 3)).millisecondsSinceEpoch,
    "valor": 300.0,
    "parcelas": 3,
    "categoria": "mercado",
  },
];

List<Map<String, dynamic>> lancamentosCartao2 = [
  {
    "id": "1",
    "titulo": " Restaurante",
    "datetime": DateTime.now().subtract(const Duration(days: 2)).millisecondsSinceEpoch,
    "valor": 50.0,
    "parcelas": 1,
    "categoria": "alimentacao",
  },
  {
    "id": "2",
    "titulo": " Uber",
    "datetime": DateTime.now().subtract(const Duration(days: 5)).millisecondsSinceEpoch,
    "valor": 30.0,
    "parcelas": 1,
    "categoria": "transporte",
  },
  {
    "id": "3",
    "titulo": " Mercado",
    "datetime": DateTime.now().subtract(const Duration(days: 6)).millisecondsSinceEpoch,
    "valor": 400.0,
    "parcelas": 4,
    "categoria": "mercado",
  },
];

List<Map<String, dynamic>> lancamentosCartao3 = [
  {
    "id": "1",
    "titulo": " Cinema",
    "datetime": DateTime.now().subtract(const Duration(days: 4)).millisecondsSinceEpoch,
    "valor": 25.0,
    "parcelas": 1,
    "categoria": "entretenimento",
  },
  {
    "id": "2",
    "titulo": " Academia",
    "datetime": DateTime.now().subtract(const Duration(days: 10)).millisecondsSinceEpoch,
    "valor": 100.0,
    "parcelas": 1,
    "categoria": "saude",
  },
  {
    "id": "3",
    "titulo": " Shopping",
    "datetime": DateTime.now().subtract(const Duration(days: 7)).millisecondsSinceEpoch,
    "valor": 150.0,
    "parcelas": 3,
    "categoria": "lazer",
  },
];
