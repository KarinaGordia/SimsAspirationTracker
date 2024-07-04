import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/models/models.dart';
import 'package:flutter/material.dart';

class ChangeTheGameMenuAnchor extends StatefulWidget {
  const ChangeTheGameMenuAnchor({super.key, required this.game});

  final GameModel game;

  @override
  State<ChangeTheGameMenuAnchor> createState() =>
      _ChangeTheGameMenuAnchorState();
}

class _ChangeTheGameMenuAnchorState extends State<ChangeTheGameMenuAnchor> {
  // SampleItem? selectedMenu;
  // SampleItem? initialMenu;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController controller, Widget? child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: Image.asset(widget.game.iconName),
          tooltip: 'Change the game',
        );
      },
      alignmentOffset: const Offset(-24, 0),
      menuChildren: List<MenuItemButton>.generate(
        GameList.games.length,
            (int index) => MenuItemButton(
          onPressed: () {
            final id = GameList.games[index].id;
            print('page with index $id was update');
            Navigator.of(context)
                .pushReplacementNamed('/main_page/achievements_page', arguments: id);
          },
          child: Text('The Sims ${index + 2}'),
        ),
      ),
    );
  }
}