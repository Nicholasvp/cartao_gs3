enum Categoria { tech, transporte, mercado, gasto }

final categoriaValues = {
  'tech': Categoria.tech,
  'transporte': Categoria.transporte,
  'mercado': Categoria.mercado,
};

// Para converter uma string em um enum
Categoria? fromStringToCategoria(String key) {
  return categoriaValues[key];
}
