import 'package:flip_book/flip_book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/flipbook_controller.dart';
import '../he_page_builder.dart';

class FirstBook extends StatelessWidget {
  final flipBookToolbarItemsConfigHE = FlipBookToolbarItemsConfig(
      locale: FlipBookLocales.he, direction: TextDirection.rtl);
   FirstBook({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    FlipBookControllers buildFlipBookControllers =
    Provider.of<FlipBookControllers>(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(mainAxisSize: MainAxisSize.min, children: [
            FlipBookToolbarItemFullscreen(
                buildFlipBookControllers.flipBookControllerHE,
                flipBookToolbarItemsConfigHE)
                .child,
            FlipBookToolbarItemCover(
                buildFlipBookControllers.flipBookControllerHE,
                flipBookToolbarItemsConfigHE)
                .child,
            FlipBookToolbarItemPrev(
              buildFlipBookControllers.flipBookControllerHE,
              flipBookToolbarItemsConfigHE,
            ).child,
            FlipBookToolbarItemNext(
                buildFlipBookControllers.flipBookControllerHE,
                flipBookToolbarItemsConfigHE)
                .child,
            FlipBookToolbarItemTOC(
                buildFlipBookControllers.flipBookControllerHE,
                flipBookToolbarItemsConfigHE,
                5)
                .child,
          ]),
        ),
        Expanded(
          child: FlipBook.builder(
            controller: buildFlipBookControllers.flipBookControllerHE,
            direction: TextDirection.rtl,
            pageSemantics: hePageSemantics,
            pageBuilder: hePageBuilder,
          ),
        ),
      ]),
    );
  }
}
