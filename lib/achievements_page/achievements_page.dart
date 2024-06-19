import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key, required this.gameId});

  final int gameId;

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {

  List<WishModel> _flagWishes = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  void initState() {
    super.initState();
    print('flagWishes = wishes');
    _flagWishes = AchievementPageLists.wishes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _openEndDrawer,
            icon: const Icon(
              Icons.tune,
            ),
            iconSize: 30,
          ),
        ],
      ),
      body: WishListBuilder(
        wishList: _flagWishes,
      ),
      endDrawer: SafeArea(
        child: FilterMenu(filteringList: _flagWishes,),
      ),
    );
  }
}

class FilterMenu extends StatefulWidget {
  const FilterMenu({super.key, required this.filteringList});

  final List<WishModel> filteringList;

  @override
  State<FilterMenu> createState() => _FilterMenuState();
}

class _FilterMenuState extends State<FilterMenu> {


  List<ExpansionPackModel> _toggledPacks = [];

  void _filterWishes(String key) {
    print('start filterMethod for $key');
    print('original wishes list lenght = ${AchievementPageLists.wishes.length}');
    for (var wish in AchievementPageLists.wishes) {
      if (wish.expansionPackKey == key) {
        widget.filteringList.add(wish);
        print('${wish.name} was added to flag wishes');
      }
    }

    print('filteringList lenght = ${widget.filteringList.length}');
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
  void _closeEndDrawer() {
    Navigator.of(context).pop();
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
                for(var pack in AchievementPageLists.expansionPacks)
                  ExpansionPackButton(
                    pack: pack,
                    onTap: () => _addToggledPackToList(pack),
                  ),
              ],
            ),
            FilledButton(
              onPressed: () {
                print('filteringList lenght = ${widget.filteringList.length}');
                widget.filteringList.clear();
                print('flag wishes was cleared');
                print('packsToggledList length is ${_toggledPacks.length}');
                for (var pack in _toggledPacks) {
                  print('call filter with ${pack.key}');
                  _filterWishes(pack.key);
                }

                _closeEndDrawer();
                print('Filter button set state');
                setState(() {});
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
  ExpansionPackButton({super.key, required this.pack, this.onTap,});

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