import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/routers/index.dart';
import 'global.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // 路由
      initialRoute: RouteNames.systemSplash,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
