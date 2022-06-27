import 'package:brand/models/brand_models.dart';
import 'package:brand/services/brand_service.dart';
import 'package:flutter/material.dart';


class BrandProvider extends ChangeNotifier {
  late brand_models brandModel = brandModel;
  final BrandService _brandService = BrandService();

  tampilkanBrand() async {
    brandModel = await _brandService.tampilkanBrand();
    // ignore: avoid_print
    print(brandModel.data!.length);
    notifyListeners();
  }

  BrandProvider() {
    tampilkanBrand();
  }
}
