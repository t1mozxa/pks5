class FishingProduct {
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final String brand;
  final String type;
  final String materials;

  FishingProduct({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.brand,
    required this.type,
    required this.materials,
  });
}

List<FishingProduct> fishingProducts = [
  FishingProduct(
    name: 'Спиннинг Rise Spin',
    description: 'Лёгкий и прочный спиннинг для профессиональной рыбалки.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-w/wc1000/6612544544.jpg',
    price: 978,
    brand: 'Rise Spin',
    type: 'Спиннинг',
    materials: 'Углеродное волокно',
  ),
  FishingProduct(
    name: 'Катушкa Torus Cast 6000 SD',
    description: 'Высококачественная катушка для спиннинга с плавным ходом.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-1-5/wc1000/7209388481.jpg',
    price: 7000,
    brand: 'Torus Cast',
    type: 'Катушка',
    materials: 'Металл, пластик',
  ),
  FishingProduct(
    name: 'Флюорокарбоновая леска',
    description: 'Флюорокарбоновая леска для рыбалки "Свияга".',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-1-d/wc1000/6952280449.jpg',
    price: 400,
    brand: 'Свияга',
    type: 'Леска',
    materials: 'Флюорокарбон',
  ),
  FishingProduct(
    name: 'Воблер для рыбалки',
    description: 'Данный свимбэйт необходим каждому рыбаку, ведь он может стать той самой приманкой трофейного улова!',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-1-e/wc1000/6964765322.jpg',
    price: 500,
    brand: 'Viva Fishing',
    type: 'Воблер',
    materials: 'Пластик, металл',
  ),
  FishingProduct(
    name: 'Kimoto Подсачек',
    description: 'Прочная прорезиненная сетка, голова размером 40 см и ручка длиной 1,3 метра обеспечивают комфорт и эффективность при выуживании даже крупной добычи.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-k/wc1000/6845430872.jpg',
    price: 1580,
    brand: 'Kimoto',
    type: 'Подсак',
    materials: 'Алюминий, нейлон',
  ),
  FishingProduct(
    name: 'Эхолот Практик 6S',
    description: 'Современный эхолот для поиска рыбы и анализа дна.',
    imageUrl: 'https://avatars.mds.yandex.net/get-mpic/11535894/2a0000018c822fa7b8f81e4227205f40d38f/optimize',
    price: 11700,
    brand: 'Практик',
    type: 'Эхолот',
    materials: 'Пластик, электроника',
  ),
  FishingProduct(
    name: 'Крючки Owner',
    description: 'Набор японских прочных и острых рыболовных крючков.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-0/wc1000/6706827324.jpg',
    price: 500,
    brand: 'Owner',
    type: 'Крючки',
    materials: 'Сталь',
  ),
  FishingProduct(
    name: 'Ящик для зимней и летней рыбалки',
    description: 'ящик рыболовный двухсекционный Helios идеально подойдет для зимней рыбалки.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-1-9/wc1000/7237207125.jpg',
    price: 2500,
    brand: 'Пепвый туристический',
    type: 'Ящик, сумка, контейнер',
    materials: 'Пластик',
  ),
  FishingProduct(
    name: 'Термос Биосталь',
    description: 'Надёжный термос, сохраняющий тепло в течение всего дня.',
    imageUrl: 'https://ir.ozone.ru/multimedia/wc1000/1021398580.jpg',
    price: 1500,
    brand: 'Биосталь ТД',
    type: 'Термос',
    materials: 'Нержавеющая сталь',
  ),
];
