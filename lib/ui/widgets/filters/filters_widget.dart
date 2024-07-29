import 'package:achievements/domain/entities/pack.dart';
import 'package:achievements/ui/widgets/filters/filters_widget_model.dart';
import 'package:flutter/material.dart';

class FiltersWidget extends StatefulWidget {
  final int gameKey;

  const FiltersWidget({super.key, required this.gameKey});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  late final FiltersWidgetModel _model;

  @override
  void initState() {
    super.initState();
    _model = FiltersWidgetModel(gameIndex: widget.gameKey);
  }

  @override
  Widget build(BuildContext context) {
    return FiltersWidgetModelProvider(
      model: _model,
      child: const _FiltersWidgetBody(),
    );
  }
}

class _FiltersWidgetBody extends StatefulWidget {
  const _FiltersWidgetBody();

  @override
  State<_FiltersWidgetBody> createState() => _FiltersWidgetBodyState();
}

class _FiltersWidgetBodyState extends State<_FiltersWidgetBody> {
  @override
  Widget build(BuildContext context) {
    final model = FiltersWidgetModelProvider.watch(context)?.model;
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
                  for (var pack in model!.packs)
                    PackIconButton(
                      pack: pack,
                    ),
                  // for (var pack in widget.game.expansionPacks.values)
                  //   ExpansionPackButton(
                  //     pack: pack,
                  //     isToggled: widget.toggledPacks.contains(pack),
                  //     onTap: () {
                  //       _addToggledPackToList(pack);
                  //     },
                  //   ),
                ],
              ),
            ),
            FilterButton(
              onTap: () {
                // _startFilter();
                // _closeEndDrawer();
              },
              text: 'Filter wishes',
            ),
            const SizedBox(
              height: 15,
            ),
            FilterButton(
              onTap: () {
                // widget.toggledPacks.clear();
                // setState(() {});
              },
              text: 'Reset filters',
            ),
          ],
        ),
      ),
    );
  }
}

class PackIconButton extends StatefulWidget {
  const PackIconButton({
    super.key,
    required this.pack,
  });

  final Pack pack;

  @override
  State<PackIconButton> createState() => _PackIconButtonState();
}

class _PackIconButtonState extends State<PackIconButton> {
  @override
  Widget build(BuildContext context) {
    final model = FiltersWidgetModelProvider.read(context)?.model;
    final border = widget.pack.isToggled
        ? WidgetStateProperty.all(
            const CircleBorder(
              side: BorderSide(
                width: 2.0,
                color: Colors.black,
              ),
            ),
          )
        : null;

    return SizedBox(
      width: 83,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: () => model?.togglePack(widget.pack),
            clipBehavior: Clip.hardEdge,
            label: Image.asset(widget.pack.imageName),
            style: ButtonStyle(
              fixedSize: WidgetStateProperty.all(
                const Size.fromRadius(35),
              ),
              overlayColor: WidgetStateProperty.all(Colors.black12),
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              padding: WidgetStateProperty.all(EdgeInsets.zero),
              shape: border,
            ),
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

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, this.onTap, required this.text});

  final Function? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          // if(onTap != null) {
          //   onTap!();
          // }
        },
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(const Size(200, 50)),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
