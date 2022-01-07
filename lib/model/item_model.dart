import 'dart:ui';

class Item {
  String title;
  String description;
  Color color;
  String price;
  String priceDescription;
  String imageUrl;

  Item(this.title, this.description, this.color, this.price,
      this.priceDescription, this.imageUrl);
}

List<Item> getGridItems() {
  return <Item>[
    Item(
      'MacBook Pro 16 inch 2020 New',
      'Tình trạng: Mới 100%, Nguyên Seal \n Màu: Space Gray \n CPU: 2.4GHz 8-core i9-9980HK (16MB cache, Turbo 5.0GHz) \n RAM: 64GB 2666MHz DDR4 memory',
      Color(0xFFDFDFF8),
      '23.00',
      '(Space Gray/i9 2.4Ghz/64GB/1TB/5600M)',
      'assets/images/delll33_cori3.jpg',
    ),
    Item(
      'Laptop Asus Vivobook',
      'Tình trạng: Mới 100%, Nguyên Seal \n Laptop Asus Vivobook X515MA-BR478W N4020 \n  RAM: 4GB 256GB \n SSD \nHệ Điều Hành :Win11',
      Color(0xFFDFDFF8),
      '30.00',
      'per kg',
      'assets/images/images_intro_dell.jfif',
    ),
    Item(
      'Laptop DELL LATITUDE E6430',
      'i5 1135G7 \n Ram: 8GB 512GB \n SSD\n Hệ Điều Hành :Win10 (No.00781229)',
      Color(0xFFDFDFF8),
      '15.36',
      'each',
      'assets/images/hd_i3.jpg',
    ),
    Item(
      'Laptop Acer Nitro Gaming AN515-57-720A',
      "i7 \n 11800H \n Ram :8GB 512GB SSD \nSSD: Nvidia RTX3050Ti \n Ram: 4GB/Hệ Điều Hành: Win11 ",
      Color(0xFFDFDFF8),
      '38.22',
      'per kg',
      'assets/images/laptop_dohoa.jpg',
    ),
    Item(
      'Laptop Dell Inspiron N3510 Pentium N5030',
      "Ram: 4GB  128GB \nMàn Hình In: 15.6 HD Intel HD \nHệ Điều Hành: Win 10/NK ",
      Color(0xFFDFDFF8),
      '21.02',
      'each',
      'assets/images/lenovo6.jpg',
    ),
    Item(
      'Laptop MSI Modern 14 B5M R5 5500U',
      'Ram: 8GB 512GB\n AMD Radeon Graphics\nMàn Hình : 14"FHD\n Hệ Điều Hành :Win 10 ',
      Color(0xFFDFDFF8),
      '21.99',
      '2 units',
      'assets/images/macbook_1.jpg',
    ),
    Item(
      'Laptop Acer Aspire 3',
      ' 1035G1 \nRam: 8GB 512GB SSD\nMX330-2G\n Hệ Điều Hành: Win10',
      Color(0xFFDFDFF8),
      '23.55',
      'each',
      'assets/images/macbook_2.jpg',
    ),
    Item(
      'Laptop Acer Aspire A315 57G 31YD i3 1005G1',
      'Ram: 4GB\n256GB SSD\n Màn Hình :Nvidia MX330 2GB\nHệ Điều Hành :Win10 ',
      Color(0xFFDFDFF8),
      '12.45',
      '1 kg',
      'assets/images/image_core_i3.jpg',
    ),
  ];
}
