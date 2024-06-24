import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:flutter/material.dart';

class FilterMenu extends StatefulWidget {
  const FilterMenu({super.key, required this.filteringList, this.onFilterButtonTap});

  final List<WishModel> filteringList;
  final Function? onFilterButtonTap;

  @override
  State<FilterMenu> createState() => _FilterMenuState();
}

class _FilterMenuState extends State<FilterMenu> {
  final List<ExpansionPackModel> _toggledPacks = [];

  void _filterWishes(String key) {
    for (var wish in AchievementPageLists.wishes) {
      if (wish.expansionPackKey == key) {
        widget.filteringList.add(wish);
      }
    }
  }

  void _addToggledPackToList(ExpansionPackModel pack) {
    if (_toggledPacks.contains(pack)) {
      print('pack removed from list');
      _toggledPacks.remove(pack);
    } else {
      print('pack added to list');
      _toggledPacks.add(pack);
    }

    print('_addToggledPackToList setState');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
                    isToggled: _toggledPacks.contains(pack),
                    onTap: () {
                      _addToggledPackToList(pack);
                    },
                  ),
              ],
            ),
            Row(
              children: [
                FilledButton(
                  onPressed: () {
                    _startFilter();
                  },
                  child: const Text('Filter wishes'),
                ),
                FilledButton(
                  onPressed: () {
                    _toggledPacks.clear();
                    setState(() {});
                  },
                  child: const Text('Reset filters'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _startFilter() {
    widget.filteringList.clear();

    for (var pack in _toggledPacks) {
      _filterWishes(pack.key);
    }

    if (widget.onFilterButtonTap != null) {
      widget.onFilterButtonTap!();
    }
  }

  @override
  void deactivate() {
    print('filterMenu deactivate');
    super.deactivate();
  }
  @override
  void dispose() {
    print('filterMenu disposed');
    super.dispose();
  }
}

class ExpansionPackButton extends StatelessWidget {
  ExpansionPackButton({
    super.key,
    required this.pack,
    this.onTap,
    this.isToggled,
  });

  final ExpansionPackModel pack;
  final Function? onTap;
  bool? isToggled;

  WidgetStateProperty<CircleBorder>? _selectBorder() {
    if(isToggled != null) {
      if(isToggled!) {
        return WidgetStateProperty.all(
          CircleBorder(
            side: BorderSide(
              width: 2.0,
              color: Colors.deepPurple[500]!,
            ),
          ),
        );
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 83,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: () {
              if(onTap != null) {
                onTap!();
              }
            },
            clipBehavior: Clip.hardEdge,
            label: pack.image,
            style: ButtonStyle(
                fixedSize: WidgetStateProperty.all(
                  const Size.fromRadius(35),
                ),
                overlayColor: WidgetStateProperty.all(Colors.black12),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                shape: _selectBorder(),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            maxLines: 2,
            pack.name,
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
