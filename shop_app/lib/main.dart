

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'features/splash_view/splash_view.dart';

void main(){
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
