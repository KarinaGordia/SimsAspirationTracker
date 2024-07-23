part of 'filter_menu.dart';

class FilterMenuWidget extends StatefulWidget {
  const FilterMenuWidget(
      {super.key,
      required this.filteringList,
      required this.toggledPacks,
      required this.game,
      this.onFilterButtonTap});

  final List<Wish> filteringList;
  final List<ExpansionPackModel> toggledPacks;
  final Function? onFilterButtonTap;
  final GameModel game;

  @override
  State<FilterMenuWidget> createState() => _FilterMenuWidgetState();
}

class _FilterMenuWidgetState extends State<FilterMenuWidget> {
  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  void _filterWishes(String key) {
    // for (var wish in widget.game.wishes) {
    //   if (wish.expansionPackKey == key) {
    //     widget.filteringList.add(wish);
    //   }
    // }
  }

  void _addToggledPackToList(ExpansionPackModel pack) {
    if (widget.toggledPacks.contains(pack)) {
      debugPrint('pack removed from list');
      widget.toggledPacks.remove(pack);
    } else {
      debugPrint('pack added to list');
      widget.toggledPacks.add(pack);
    }

    debugPrint('_addToggledPackToList setState');
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
            Expanded(
              child: Wrap(
                runSpacing: 5,
                children: [
                  for (var pack in widget.game.expansionPacks.values)
                    ExpansionPackButton(
                      pack: pack,
                      isToggled: widget.toggledPacks.contains(pack),
                      onTap: () {
                        _addToggledPackToList(pack);
                      },
                    ),
                ],
              ),
            ),
            FilterButton(
              onTap: (){
                _startFilter();
                _closeEndDrawer();
              },
              text: 'Filter wishes',
            ),
            const SizedBox(height: 15,),
            FilterButton(
              onTap: (){
                widget.toggledPacks.clear();
                setState(() {});
              },
              text: 'Reset filters',
            ),
          ],
        ),
      ),
    );
  }

  void _startFilter() {
    widget.filteringList.clear();
    if (widget.toggledPacks.isEmpty) {
      widget.filteringList.addAll(widget.game.wishes);
      setState(() {});
    }

    for (var pack in widget.toggledPacks) {
      _filterWishes(pack.key);
    }

    if (widget.onFilterButtonTap != null) {
      widget.onFilterButtonTap!();
    }
  }
}


