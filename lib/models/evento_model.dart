class Evento {
  String nome;
  String imageUrl;
  String descricao;
  String data;
  String valor;
  String id;

  Evento(
      {required this.nome,
      required this.imageUrl,
      required this.descricao,
      required this.data,
      required this.valor,
      required this.id});
}

var eventos = [
  Evento(
      nome: "🔥🤠 ARRAIÁ 🤠🔥",
      imageUrl: "assets/images/Arraia.jpg",
      descricao: "🍻 BALDE DE CERVEJA 50,00 Reais até 20h 🍻",
      data: "18/06/2022",
      valor: "50,00",
      id: "1"),
  Evento(
      nome: "✨🧡ROLÊ DE DOMINGO🧡✨",
      imageUrl: "assets/images/RoleDeDomingo.jpg",
      descricao: "📌 PROMOÇÕES DE BEBIDAS ATÉ 20:30",
      data: "12/06/2022",
      valor: "75,00",
      id: "2"),
  Evento(
      nome: "TrapTour",
      imageUrl: "assets/images/TrapTour.jpg",
      descricao: "✅ PK DELAS 🎶",
      data: "03/06/2022",
      valor: "150,00",
      id: "3"),
];
