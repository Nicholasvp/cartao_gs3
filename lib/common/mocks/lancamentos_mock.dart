List<Map<String, dynamic>> meusLancamentos = [
  {
    "id": "1",
    "titulo": "Lançamento Exemplo 1",
    "datetime": DateTime.now().add(const Duration(days: 1)).toIso8601String(),
    "valor": 100.0,
    "parcelas": "1",
    "categoria": "Categoria 1",
  },
  {
    "id": "2",
    "titulo": "Lançamento Exemplo 2",
    "datetime": DateTime.now().add(const Duration(days: 2)).toIso8601String(),
    "valor": 200.0,
    "parcelas": "2",
    "categoria": "Categoria 2",
  },
  {
    "id": "3",
    "titulo": "Lançamento Exemplo 3",
    "datetime": DateTime.now().add(const Duration(days: 3)).toIso8601String(),
    "valor": 300.0,
    "parcelas": "3",
    "categoria": "Categoria 3",
  },
];
