import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/order_tracking_screen.dart';
import 'screens/profile_screen.dart';
import 'providers/app_provider.dart';
import 'models/product.dart';
import 'models/order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        title: 'RentHub',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'SF Pro Display',
        ),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => HomeScreen(),
          '/product-detail': (context) => ProductDetailScreen(),
          '/orders': (context) => OrdersScreen(),
          '/order-tracking': (context) => OrderTrackingScreen(),
          '/profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}
