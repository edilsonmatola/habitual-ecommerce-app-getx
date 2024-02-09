// import 'package:flutter_test/flutter_test.dart';
// import 'package:ecommerce_app/models/product.dart';
// import 'package:ecommerce_app/screens/cart_screen.dart';
// import 'package:ecommerce_app/screens/product_detail_screen.dart';
// import 'package:ecommerce_app/screens/products_screen.dart';

// void main() {
//   group('Ecommerce App Tests', () {
//     testWidgets('Product Detail Screen Test', (WidgetTester tester) async {
//       // Define a product
//       final product = Product(
//         id: 'p1',
//         title: 'Product 1',
//         description: 'Product 1 description',
//         price: 9.99,
//         imageUrl: 'https://image.com/product1.jpg',
//       );

//       // Build the ProductDetailScreen widget with the product
//       await tester.pumpWidget(MaterialApp(home: ProductDetailScreen(product)));

//       // Verify that the product details are displayed correctly
//       expect(find.text(product.title), findsOneWidget);
//       expect(find.text(product.description), findsOneWidget);
//       expect(
//           find.text('\$${product.price.toStringAsFixed(2)}'), findsOneWidget);
//     });

//     testWidgets('Add to Cart Test', (WidgetTester tester) async {
//       // Define a product
//       final product = Product(
//         id: 'p1',
//         title: 'Product 1',
//         description: 'Product 1 description',
//         price: 9.99,
//         imageUrl: 'https://image.com/product1.jpg',
//       );

//       // Build the ProductsScreen widget with the product
//       await tester.pumpWidget(MaterialApp(home: ProductsScreen()));

//       // Tap the product item to open the ProductDetailScreen
//       await tester.tap(find.text(product.title));
//       await tester.pumpAndSettle();

//       // Tap the "Add to Cart" button
//       await tester.tap(find.byKey(Key('add-to-cart')));
//       await tester.pumpAndSettle();

//       // Verify that the product is added to the cart
//       expect(find.text('1'), findsOneWidget);
//     });

//     testWidgets('Remove from Cart Test', (WidgetTester tester) async {
//       // Define a product
//       final product = Product(
//         id: 'p1',
//         title: 'Product 1',
//         description: 'Product 1 description',
//         price: 9.99,
//         imageUrl: 'https://image.com/product1.jpg',
//       );

//       // Build the CartScreen widget with the product
//       await tester.pumpWidget(MaterialApp(home: CartScreen()));

//       // Add the product to the cart
//       await tester.tap(find.text('Add to Cart'));
//       await tester.pumpAndSettle();

//       // Verify that the product is added to the cart
//       expect(find.text('1'), findsOneWidget);

//       // Remove the product from the cart
//       await tester.tap(find.byKey(Key('remove-from-cart')));
//       await tester.pumpAndSettle();

//       // Verify that the product is removed from the cart
//       expect(find.text('0'), findsOneWidget);
//     });
//   });
// }
