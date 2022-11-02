import 'package:flip_book/flip_book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/flipbook_controller.dart';
import '../en_page_builder.dart';

class SecondBook extends StatelessWidget {
  final flipBookToolbarItemsConfigEN =
      FlipBookToolbarItemsConfig(locale: FlipBookLocales.en);

  SecondBook({super.key});

  @override
  Widget build(BuildContext context) {
    FlipBookControllers buildFlipBookControllers =
        Provider.of<FlipBookControllers>(context);
    return Column(mainAxisSize: MainAxisSize.min, children: [
      AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          FlipBookToolbarItemFullscreen(
                  buildFlipBookControllers.flipBookControllerEN,
                  flipBookToolbarItemsConfigEN)
              .child,
          FlipBookToolbarItemCover(
                  buildFlipBookControllers.flipBookControllerEN,
                  flipBookToolbarItemsConfigEN)
              .child,
          FlipBookToolbarItemPrev(buildFlipBookControllers.flipBookControllerEN,
                  flipBookToolbarItemsConfigEN)
              .child,
          FlipBookToolbarItemNext(buildFlipBookControllers.flipBookControllerEN,
                  flipBookToolbarItemsConfigEN)
              .child,
          FlipBookToolbarItemTOC(buildFlipBookControllers.flipBookControllerEN,
                  flipBookToolbarItemsConfigEN, 5)
              .child,
        ]),
      ),
      Expanded(
        child: FlipBook.builder(
          controller: buildFlipBookControllers.flipBookControllerEN,
          pageBuilder: enPageBuilder,
          // padding: const EdgeInsets.symmetric(vertical: 10),
        ),
      )
    ]);
  }
}
