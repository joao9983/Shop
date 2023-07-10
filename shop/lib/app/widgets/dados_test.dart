class Categoria {
  String nome;
  String img;
  List<Produto> produtos;

  Categoria({
    required this.nome,
    required this.produtos,
    required this.img,
  });
}

class Produto {
  int quantidade;
  String nome;
  String id;
  double preco;
  String image;
  String descricao;

  Produto({
    required this.quantidade,
    required this.nome,
    required this.id,
    required this.preco,
    required this.image,
    required this.descricao,
  });
}

List<Categoria> categorias = [
  Categoria(
    nome: "Bebidas",
    img:
        "https://images.vexels.com/media/users/3/127674/isolated/lists/9fd717285f202af5437fd453cbe2e172-copo-plano-de-bebidas.png",
    produtos: [
      Produto(
        quantidade: 1,
        nome: "leite",
        id: "adf7fe80-8e71-4183-a232-620765ee9954",
        preco: 10.89,
        image: "https://m.media-amazon.com/images/I/51wNnRI8zTL._AC_SX679_.jpg",
        descricao: "preço por Unidade",
      ),
    ],
  ),
  Categoria(
    nome: "Vegetais",
    img:
        "https://e7.pngegg.com/pngimages/238/260/png-clipart-basket-of-fruit-vegetable-euclidean-cartoon-vegetables-cartoon-character-natural-foods.png",
    produtos: [
      Produto(
        quantidade: 1,
        nome: "cenoura",
        id: "adf7fe80-8e71-4183-a232-620765ee9954",
        preco: 15.99,
        image:
            "https://img1.gratispng.com/20171221/fbe/carrots-png-picture-5a3c478e3ed610.1808317415138999182574.jpg",
        descricao: "preço por Kg",
      ),
    ],
  ),
  Categoria(
    nome: "Frutas",
    img:
        'https://i.pinimg.com/originals/06/7f/fc/067ffce23a51a61b247f86e8b7936ee0.jpg',
    produtos: [
      Produto(
        quantidade: 1,
        nome: "goiaba",
        id: "adf7fe80-8e71-4183-a232-620765ee9954",
        preco: 08.39,
        image:
            "data:image/jpeg;base64,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",
        descricao: "preço por Kg",
      ),
    ],
  ),
];
