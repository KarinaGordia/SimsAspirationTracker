import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:flutter/material.dart';

class FilterMenu extends StatelessWidget {
  FilterMenu({super.key, required this.filteringList, this.onFilterButtonTap});

  final List<WishModel> filteringList;
  final Function? onFilterButtonTap;

  List<ExpansionPackModel> _toggledPacks = [];

  void _filterWishes(String key) {
    print('start filterMethod for $key');
    print('wishes.length = ${AchievementPageLists.wishes.length}');
    for (var wish in AchievementPageLists.wishes) {
      if (wish.expansionPackKey == key) {
        filteringList.add(wish);
        print('${wish.name} was added to flag wishes');
      }
    }

    print('filteringList lenght = ${filteringList.length}');
  }

  void _addToggledPackToList(ExpansionPackModel pack) {
    print('onTap in filterMenu');
    if (_toggledPacks.contains(pack)) {
      _toggledPacks.remove(pack);
      print('${pack.name} was remover from toggledPacks');
      for (var e in _toggledPacks) {
        print(e.name);
      }
    } else {
      _toggledPacks.add(pack);
      print('${pack.name} added to toggledPacks');
      for (var e in _toggledPacks) {
        print(e.name);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print('wishes.length = ${AchievementPageLists.wishes.length}');
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Filter menu',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              runSpacing: 5,
              children: [
                for (var pack in AchievementPageLists.expansionPacks)
                  ExpansionPackButton(
                    pack: pack,
                    onTap: () {
                      _addToggledPackToList(pack);
                    },
                  ),
              ],
            ),
            FilledButton(
              onPressed: () {
                filteringList.clear();
                print('flag wishes was cleared');

                print('packsToggledList length is ${_toggledPacks.length}');
                for (var pack in _toggledPacks) {
                  print('call filter with ${pack.key}');
                  _filterWishes(pack.key);
                }

                if (onFilterButtonTap != null) {
                  onFilterButtonTap!();
                }
              },
              child: const Text('Filter wishes'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpansionPackButton extends StatefulWidget {
  ExpansionPackButton({
    super.key,
    required this.pack,
    this.onTap,
  });

  final ExpansionPackModel pack;
  final Function? onTap;

  @override
  State<ExpansionPackButton> createState() => _ExpansionPackButtonState();
}

class _ExpansionPackButtonState extends State<ExpansionPackButton> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    final toggleBorderStyle = WidgetStateProperty.all(
      CircleBorder(
        side: BorderSide(
          width: 2.0,
          color: Colors.deepPurple[500]!,
        ),
      ),
    );

    return SizedBox(
      width: 83,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: () {
              widget.onTap!();
              _isToggled = !_isToggled;
              setState(() {});
            },
            clipBehavior: Clip.hardEdge,
            label: widget.pack.image,
            style: ButtonStyle(
                fixedSize: WidgetStateProperty.all(
                  const Size.fromRadius(35),
                ),
                overlayColor: WidgetStateProperty.all(Colors.black12),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                shape: _isToggled ? toggleBorderStyle : null),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            maxLines: 2,
            widget.pack.name,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ExpansionPackModel {
  final Image image;
  final String name;
  final String key;

  ExpansionPackModel(
      {required this.image, required this.name, required this.key});
}
