import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter/services.dart';
import 'package:project_ta_view_only/views/home_view.dart';
import 'package:project_ta_view_only/views/product/product_home_view.dart';
import 'package:project_ta_view_only/views/sale/sale_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) => runApp(MyApp()));
}

ColorScheme defaultColorScheme = const ColorScheme(
  primary: Color(0xff2F80ED),
  secondary: Color(0xffD01415),
  surface: Color(0xff181818),
  background: Color(0xffffffff),
  error: Color(0xffCF6679),
  onPrimary: Color(0xff000000),
  onSecondary: Color(0xff000000),
  onSurface: Color(0xffffffff),
  onBackground: Color(0xffffffff),
  onError: Color(0xff000000),
  brightness: Brightness.light,
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: defaultColorScheme,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/productHomeView',
      getPages: [
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/saleView', page: () => SaleView()),
        GetPage(name: '/productHomeView', page: () => ProductHomeView()),
      ],
    );
  }
}
