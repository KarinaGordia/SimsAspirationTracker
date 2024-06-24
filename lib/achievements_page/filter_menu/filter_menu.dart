import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/achievements_page/filter_menu/expansion_pack_button.dart';
import 'package:achievements/achievements_page/filter_menu/expansion_pack_model.dart';
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

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

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
                    _closeEndDrawer();
                  },
                  child: const Text('Filter wishes'),
                ),
                FilledButton(
                  onPressed: () {
                    _toggledPacks.clear();
                    widget.filteringList.addAll(AchievementPageLists.wishes);

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
    if(_toggledPacks.isEmpty) {
      widget.filteringList.addAll(AchievementPageLists.wishes);
      setState(() {});
    }

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
