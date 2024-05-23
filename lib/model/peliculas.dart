class Pelicula {
  int id;
  String nombre;
  String descripcion;
  String fechaEstreno;
  String imagen;

  Pelicula(
      {required this.id,
      required this.nombre,
      required this.descripcion,
      required this.fechaEstreno,
      required this.imagen});
}

List<Pelicula> peliculas = [
  Pelicula(
      id: 1,
      nombre: "avengers",
      descripcion: "pelicula de avengers",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/banner.jpeg"),
  Pelicula(
      id: 2,
      nombre: "El Padrino",
      descripcion: "pelicula de avengers",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/sonic.png"),
  Pelicula(
      id: 3,
      nombre: "Hulk",
      descripcion:
          "El científico Bruce Banner (Edward Norton) continúa recorriendo el mundo en busca de un antídoto que haga frente al incontrolable poder que le dieron los rayos gamma y que le hace convertirse en Hulk cuando la furia reina se apodera de él.",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/Poster-Hulk.jpg"),
  Pelicula(
      id: 4,
      nombre: "sonic",
      descripcion:
          "Sonic intenta navegar por las complejidades de la vida en la Tierra con su nuevo mejor amigo, un humano llamado Tom Wachowski. Pronto deben unir fuerzas para evitar que el malvado Dr. Robotnik capture a Sonic y use sus poderes para dominar el mundo.",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/sonic.png"),
  Pelicula(
      id: 5,
      nombre: "Venom",
      descripcion:
          "Protagonizada por Tom Hardy como Eddie Brock / Venom, junto a Michelle Williams, Riz Ahmed, Scott Haze y Reid Scott. En la película, el periodista Brock gana superpoderes después de convertirse en el anfitrión de un simbionte alienígena cuya especie planea invadir la Tierra.",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/Venom.jpg")
];
