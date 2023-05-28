# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bikes = Bike.create([
  {
    marca: "KSW",
    modelo: "XLT 21V Câmbios Shimano",
    descricao: "Com design moderno e quadro de alumínio 6061, a KSW XLT vem equipada com 21 marchas, câmbios shimano, trocador de engate rápido, freios a disco e suspensão dianteira! Perfeita para quem deseja passear na natureza ou utilizar para mobilidade urbana.",
    valor_aluguel: 10.50,
    image_url: "/bike_1.png"
  },
  {
    marca: "KRW",
    modelo: "Destiny Alumínio",
    descricao: "A bicicleta KRW Destiny SX38 foi desenvolvida para quem quer realizar um passeio e pegar trilhas leves. Com seu quadro em alumínio 6061, fornece segurança e leveza no seu pedal, além do seu design moderno e exclusivo. Possuí também freio a disco, que oferece uma maior segurança. Possuí diversas cores que garante um estilo próprio para você.",
    valor_aluguel: 20.50,
    image_url: "/bike_2.png"
  },
  {
    marca: "KRW",
    modelo: "K3.0",
    descricao: "A bicicleta KRW R8 foi desenvolvida para quem quer realizar um passeio e pegar trilhas leves. Com seu quadro em alumínio 6061, fornece segurança e leveza no seu pedal. Possuí também freio hidráulico e trava de ombros, que oferece uma maior segurança. Possuí diversas cores que garante um estilo próprio para você.",
    valor_aluguel: 15.50,
    image_url: "/bike_3.png"
  },
  {
    marca: "KRW",
    modelo: "Spotlight",
    descricao: "A bicicleta KRW Spotlight SX37 foi desenvolvida para quem quer realizar um passeio e pegar trilhas leves. Com seu quadro em alumínio 6061, fornece segurança e leveza no seu pedal, além do seu design moderno e exclusivo. Possuí também freio a disco, que oferece uma maior segurança. Possuí diversas cores que garante um estilo próprio para você.",
    valor_aluguel: 13.00,
    image_url: "/bike_4.png"
  },
  {
    marca: "KRW",
    modelo: "Traction",
    descricao: "A bicicleta KRW Traction SX7 foi desenvolvida para quem quer realizar um passeio e pegar trilhas leves. Possui câmbios Shimano. Com seu quadro em alumínio 6061, fornece segurança e leveza no seu pedal, além do seu design moderno e único. Possuí também freio a disco, que oferece uma maior segurança. Possuí diversas cores que garante um estilo próprio para você.",
    valor_aluguel: 14.00,
    image_url: "/bike_5.png"
  },
  {
    marca: "KRW",
    modelo: "Ultraparty",
    descricao: "A bicicleta KRW Ultraparty SX4 foi desenvolvida para quem quer realizar um passeio e pegar trilhas leves. Possui câmbios Shimano. Com seu quadro em alumínio 6061, fornece segurança e leveza no seu pedal, além do seu design moderno e único. Possuí também freio a disco, que oferece uma maior segurança. Possuí diversas cores que garante um estilo próprio para você.",
    valor_aluguel: 11.00,
    image_url: "/bike_6.png"
  },
  {
    marca: "Dropp",
    modelo: "Aluminum 27V",
    descricao: "A Dropp Aluminum 27V possui um lindo design, quadro em alumínio 6061 que oferece resistência, leveza e durabilidade. E não para por aqui! Com 27 combinações de marchas, trocador de engate rápido seu desempenho nas subidas e descidas é garantido, para sua segurança a bike vem equipada com freios a disco que oferecem maior tranquilidade nas frenagens, e proporcionando conforto nas suas pedaladas a bicicleta possui uma suspensão que ajuda a amortecer os impactos em diferentes tipos de terrenos.",
    valor_aluguel: 20.00,
    image_url: "/bike_7.png"
  },
  {
    marca: "Dropp",
    modelo: "Z3",
    descricao: "Com um visual imponente e design ergonômico, a DROPP Z3 é uma ótima opção para quem busca leveza, conforto, segurança e estilo em passeios ou trilhas leves. O quadro e pedivela em alumínio deixam a bicicleta leve, as 21 combinações de marchas oferecem um bom desempenho em terrenos elevados, o freio a disco proporciona segurança nas frenagens e as várias combinações de cor agradam todos os estilos!",
    valor_aluguel: 14.90,
    image_url: "/bike_8.png"
  },
  {
    marca: "Dropp",
    modelo: "Race 12V",
    descricao: "Sua busca pela bike ideal termina aqui! A Dropp Race 12v Garante seu desempenho e segurança em diferentes tipos de terreno! A bike possui um quadro altamente resistente e leve, fabricado em alumínio 6061, 12 combinações de marcha para você encarar qualquer subida, freios hidráulicos que garantem sua segurança em qualquer ladeira e uma suspensão 100mm com trava remota que proporciona conforto no seu percurso e mais desempenho quando travada!.",
    valor_aluguel: 21.30,
    image_url: "/bike_9.png"
  },
  {
    marca: "Dropp",
    modelo: "SX Evo",
    descricao: "Um modelo Exclusivo e Limitado da Marca Dropp, a SX EVO possui um quadro em alumínio 6061 que assegura leveza e resistência para sua bike, suas peças são combinadas promovendo um design diferente, equipada dom 21 marchas, freios a disco e suspensão dianteira.",
    valor_aluguel: 19.80,
    image_url: "/bike_10.png"
  },
])

Ponto.create([
  {
    nome: "Ponto 1 - Aldeota",
    endereco: "Rua Carlos Vasconcelos nº 210",
    image_url: "/ponto_1.png",
    horario: "Seg a Sex 05:00 - 22:00",
    link_maps: 'https://www.google.com/maps/@-3.7238406,-38.5104863,17z?entry=ttu'
  },
  {
    nome: "Ponto 2 - Centro",
    endereco: "Rua Floriano Peixoto nº 600",
    image_url: "/ponto_2.png",
    horario: "Seg a Sex 05:00 - 19:00",
    link_maps: 'https://www.google.com/maps/place/Pra%C3%A7a+do+Ferreira+-+Centro/@-3.7276567,-38.5282248,19z/data=!3m1!4b1!4m6!3m5!1s0x7c749aa819ca101:0x90aa3044f12fd344!8m2!3d-3.727658!4d-38.5275797!16s%2Fg%2F12257vn7?entry=ttu'
  },
  {
    nome: "Ponto 3 - Beira Mar",
    endereco: "Av Beira mar nº 100",
    image_url: "/ponto_3.png",
    horario: "Seg a Sex 05:00 - 22:00 Sab e Dom 07:00 - 20:00",
    link_maps: 'https://www.google.com/maps/place/Beira+Mar/@-3.7211003,-38.5094746,17z/data=!4m6!3m5!1s0x7c748466aaaaaab:0x85ff40101d7dff1b!8m2!3d-3.7211003!4d-38.5094746!16s%2Fg%2F11gfdpxxy_?entry=ttu'
  },
  {
    nome: "Ponto 4 - Iguatemi",
    endereco: "Av Engenheiro Santana Júnior nº 1000",
    image_url: "/ponto_4.png",
    horario: "Seg a Dom 10:00 - 22:00",
    link_maps: 'https://www.google.com/maps/place/Iguatemi/@-3.756042,-38.4919252,17z/data=!3m1!4b1!4m6!3m5!1s0x7c74963201865ff:0x2d77cda38272811f!8m2!3d-3.7560474!4d-38.4893449!16s%2Fg%2F121w6t5z?entry=ttu'
  },
  {
    nome: "Ponto 5 - Unifor",
    endereco: "Av Washington Soares nº 1321",
    image_url: "/ponto_5.png",
    horario: "Seg a Sex 06:00 - 23:00 Sab 07:00 - 17:00",
    link_maps: 'https://www.google.com/maps/place/UNIFOR+University+of+Fortaleza/@-3.7687753,-38.478061,15z/data=!4m10!1m2!2m1!1sunifor!3m6!1s0x7c745fe9c03245d:0xd435fd5a6bfbbe44!8m2!3d-3.7687753!4d-38.478061!15sCgZ1bmlmb3IiA4gBAZIBEnByaXZhdGVfdW5pdmVyc2l0eeABAA!16s%2Fm%2F0cpbmrj?entry=ttu'
  }
])
    
