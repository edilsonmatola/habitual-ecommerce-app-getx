import 'package:get/get.dart';
import 'package:habitual/src/data/models/item_model.dart';

import '../core/core_export.dart';

// ==== Tech Items =====

final product01 = ItemModel(
  itemName: 'Macbook Pro 13"',
  brand: 'Apple',
  prices: [
    1934.99,
    1954.99,
    1964.99,
    1974.99,
  ],
  images: [
    'https://media.croma.com/image/upload/v1685969049/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256608_rm160r.png',
    'https://cdn.shopify.com/s/files/1/0568/5942/7015/products/MNEH3HN_A_1_grande.png?v=1655374178',
    'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-silver-select-202206?wid=1280&hei=1190&fmt=png-alpha&.v=1664497095569',
    'https://thegoodguys.sirv.com/products/50073776/50073776_751313.PNG?profile=social',
  ],
  colors: [
    'Dark Grey'.tr,
    'Dark Grey'.tr,
    'Silver'.tr,
    'Silver'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    false,
    false,
    true,
    true,
  ],
);

final product02 = ItemModel(
  itemName: 'DualSense Wireless Controller PS5',
  brand: 'Sony',
  prices: [
    79.99,
    87.99,
    97.99,
  ],
  images: [
    'https://i0.wp.com/sygnifictech.com/wp-content/uploads/2021/07/dualsense-ps5-controller-red-accessory-front.png?fit=580%2C580&ssl=1',
    'https://i5.walmartimages.com/asr/21d776f3-018e-4ba3-878d-73042b187096.14f7e11bf00d0f5f0061fc65ca506ec5.png',
    'https://icegames.co/image/cache/catalog/1212121219/dualsense-ps5-controller-midnight-black-accessory-front-550x550.png',
    'https://astorekw.com/website/image/product.image/10179/image/300x300',
  ],
  colors: [
    'Red'.tr,
    'Pink'.tr,
    'Black'.tr,
    'Blue'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    false,
    true,
    false,
  ],
);

final product03 = ItemModel(
  itemName: 'Alienware 38” Curved Monitor',
  brand: 'Dell',
  prices: [
    2454.99,
    2699.99,
    2899.99,
  ],
  images: [
    'https://i.ebayimg.com/images/g/uQUAAOSw26Nkiw2t/s-l1600.png',
    'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/14682.png',
    'https://icegames.co/image/cache/catalog/1212121219/dualsense-ps5-controller-midnight-black-accessory-front-550x550.png',
    'https://astorekw.com/website/image/product.image/10179/image/300x300',
  ],
  colors: [
    'Black'.tr,
    'Black'.tr,
    'Grey'.tr,
    'White'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    false,
    true,
    false,
  ],
);

// ==== Reading Items =====

final product04 = ItemModel(
  itemName: '12 rules for life',
  brand: 'Jordan B. Peterson',
  prices: [
    29.99,
  ],
  images: [
    'https://cdn.shopify.com/s/files/1/0580/8472/0700/products/12Rules_Transparent.png?v=1665160614',
    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/8056597596404__STD__shad__qt.png?impolicy=SGH_bgtransparent&width=1000',
  ],
  colors: [
    'White'.tr,
    'Black'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    false,
  ],
);

final product05 = ItemModel(
  itemName: 'The 48 Laws of Power',
  brand: 'Robert Greene',
  prices: [
    19.99,
  ],
  images: [
    'https://studentstore.pk/wp-content/uploads/2021/01/B_516.png',
    'https://bookbins.in/wp-content/uploads/2021/08/The-48-Laws-Of-Power-Robert-Greene-Buy-Online-Bookbins-1.png',
  ],
  colors: [
    'Red'.tr,
    'Red'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    false,
  ],
);

final product06 = ItemModel(
  itemName: "Can't Hurt Me: Master Your Mind and Defy the Odds",
  brand: 'David Goggins',
  prices: [
    22.04,
  ],
  images: [
    'https://vaclavkment.cz/wp-content/uploads/2022/01/nobg.png',
    'https://contxto.com/wp-content/uploads/2023/02/1675372305.png',
  ],
  colors: [
    'Black'.tr,
    'Black'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    true,
  ],
);

// ==== Fashion Items =====

final product07 = ItemModel(
  itemName: 'Burberry Penelope Sunglasses',
  brand: 'Burberry Penelope',
  prices: [
    429.99,
    439.99,
    499.99,
  ],
  images: [
    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/8056597614160__STD__shad__qt.png?impolicy=SGH_bgtransparent&width=1000',
    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/8056597596404__STD__shad__qt.png?impolicy=SGH_bgtransparent&width=1000',
    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/8056597883818__STD__shad__fr.png?impolicy=SGH_bgtransparent&width=1000',
  ],
  colors: [
    'Brown'.tr,
    'Black'.tr,
    'Green'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    true,
    true,
  ],
);

final product08 = ItemModel(
  itemName: 'Chuck 70 Hi Sneakers',
  brand: 'Converse',
  prices: [
    79.99,
    69.99,
    79.99,
  ],
  images: [
    'https://hirshleifers.com/cdn/shop/products/4a0a7997cb0bf9d9d98b65545f013823.png?v=1681856149&width=640',
    'https://row.oneblockdown.it/cdn/shop/products/169145C001_1_600x.png?v=1599665225',
    'https://www.thenextsole.com/storage/images/A03519C.png',
  ],
  colors: [
    'Blue'.tr,
    'Black'.tr,
    'Grey'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    true,
    false,
  ],
);

final product09 = ItemModel(
  itemName: 'Arizona Sandals',
  brand: 'Birkenstock',
  prices: [
    135.99,
    145.99,
  ],
  images: [
    'https://media2.sport-bittl.com/images/product_images/original_images/27826167676a_Birkenstock_Arizona_Schuh_He_schwarz.png',
    'https://cdn.shopify.com/s/files/1/0249/1706/products/birkenstock-women-s-sandals-birkenstock-women-s-arizona-soft-footbed-multiple-colors-14047846760515_5000x.png?v=1602190176',
  ],
  colors: [
    'Black'.tr,
    'Brown'.tr,
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
    true,
  ],
);

// ==== Music Items =====

final product10 = ItemModel(
  itemName: '2014 Forest Hills Drive',
  brand: 'J. Cole',
  prices: [
    24.99,
    145.99,
  ],
  images: [
    'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_104146487/fee_786_587_png',
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
  ],
);

final product11 = ItemModel(
  itemName: 'The Off Season',
  brand: 'J. Cole',
  prices: [
    24.99,
  ],
  images: [
    'https://thesoundofvinyl.com/cdn/shop/products/SharedImage-122030.png?v=1685975302',
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
  ],
);

final product12 = ItemModel(
  itemName: 'good kid, m.A.A.d city',
  brand: 'Kendrick Lamar',
  prices: [
    44.99,
  ],
  images: [
    'https://cdn.shopify.com/s/files/1/0061/6484/0518/products/Kendrick-Lamar-good-kid_-m.A.A.png?v=1637704927',
  ],
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  inStock: [
    true,
  ],
);

final trending = [product04, product07, product08];

final deals = [
  product02,
  product09,
  product12,
];

final justForYou = [
  product01,
  product04,
  product10,
];

final mostPopularCategoriesImage = [
  'https://media.croma.com/image/upload/v1685969049/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256608_rm160r.png',
  'https://images.ray-ban.com/is/image/RayBan/8053672845358__002.png?impolicy=RB_RB_FBShare',
  'https://cdn11.bigcommerce.com/s-h0bqu/images/stencil/1280x1280/products/4398/9412/Fender_Bullet_Stratocaster_HT_Electric_Guitar_Brown_Sunburst__34857.1678809883.png?c=2',
  'https://bookbins.in/wp-content/uploads/2021/08/The-48-Laws-Of-Power-Robert-Greene-Buy-Online-Bookbins-1.png',
];

final mostPopularCategoriesColors = [
  AppColors.purple300,
  AppColors.blue300,
  AppColors.red300,
  AppColors.green300,
];

final mostPopularCategories = [
  'Tech',
  'Fashion',
  'Music',
  'Reading',
];

final title = [
  'Action & Adventure',
  'Classics',
  'Essays',
  'Comic Book / Graphical Novel',
  'Fantsay',
  'Detective & Mistery',
  'Historical Fiction',
  'Horror',
  'Literary Fiction',
  'Romance',
  'Science Fiction',
  'Short Stories',
  'Cookbooks',
  'Suspense & Thrillers',
  "Women's Fiction",
  'Biographies & Autobiographies',
  'History',
  'Memoir',
  'Poetry',
  'Self-Help',
  'True Crime',
  'Other'
];

final categories = [
  'Automative',
  'Baby',
  'Bags',
  'Beauty Supplies',
  'Books',
  'clothing',
  'Jewelry',
  'Handmade',
  'Health Care',
  'Home',
  'Instruments',
  'Movies + TV',
  'Music',
  'Pet',
  'Patio, Lawn + Garden',
  'Science',
  'Shoes',
  'Sports',
  'Tools',
  'Toys + Games',
  'Video Games'
];
