import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/order.dart';

class AppProvider with ChangeNotifier {
  int _currentIndex = 0;
  List<Product> _featuredProducts = [];
  List<Product> _popularRentals = [];
  List<Order> _orders = [];
  String _selectedCategory = 'All';

  int get currentIndex => _currentIndex;
  List<Product> get featuredProducts => _featuredProducts;
  List<Product> get popularRentals => _popularRentals;
  List<Order> get orders => _orders;
  String get selectedCategory => _selectedCategory;

  AppProvider() {
    _initializeData();
  }

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void _initializeData() {
    // Initialize featured products
    _featuredProducts = [
      Product(
        id: '1',
        name: 'Smart Kitchen Set',
        description: 'Upgrade your cooking experience',
        price: 45.0,
        imageUrl: 'lib/assets/Smart Kitchen Set.png',
      ),
      Product(
        id: '2',
        name: 'Tech Bundle',
        description: 'Latest gadgets for tech enthusiasts',
        price: 80.0,
        imageUrl: 'lib/assets/Tech Bundle.png', // ← CHANGE ONLY THIS LINE
      ),
    ];

    // Initialize popular rentals
    _popularRentals = [
      Product(
        id: '3',
        name: 'DJI Drone',
        description: 'Capture stunning aerial footage',
        price: 60.0,
        imageUrl: 'lib/assets/DJI Drone.png',
      ),
      Product(
        id: '4',
        name: 'Canon Camera',
        description: 'Professional photography equipment',
        price: 50.0,
        imageUrl: 'lib/assets/Canon Camera.png',
      ),
      Product(
        id: '5',
        name: 'Bose Headphones',
        description: 'Immersive audio experience',
        price: 30.0,
        imageUrl: 'lib/assets/Bose_Headphones.png',
      ),
    ];

    // Initialize orders
    _orders = [
      Order(
        id: '#123456',
        name: 'Modern Apartment',
        price: 250.0,
        status: 'Pending',
        imageUrl: 'lib/assets/Smart Kitchen Set.png',
      ),
      Order(
        id: '#789012',
        name: 'Modern Apartment',
        price: 280.0,
        status: 'Ongoing',
        imageUrl: 'lib/assets/DJI Drone.png',
      ),
    ];
  }
}
