
import 'package:electron_book/src/ui/en_page_builder.dart';
import 'package:electron_book/src/ui/home/first_book.dart';
import 'package:electron_book/src/ui/home/second_book.dart';
import 'package:flip_book/flip_book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/controller/flipbook_controller.dart';
import 'src/ui/he_page_builder.dart';


void main() async {
  ensureInitialized([FlipBookLocales.he]);
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => FlipBookControllers()),
        ],
        builder: (context, _) {
          final app = MyApp();
          app.build(context);
          return app;
        }),
  );
}

class MyApp extends StatelessWidget {

  // final flipBookToolbarItemsConfigHE = FlipBookToolbarItemsConfig(
  //     locale: FlipBookLocales.he, direction: TextDirection.rtl);

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flip book example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondBook(),
      debugShowCheckedModeBanner: false,
    );
  }
}
