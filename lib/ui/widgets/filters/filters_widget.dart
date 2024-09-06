import 'package:achievements/domain/entities/pack.dart';
import 'package:achievements/ui/widgets/filters/filters_widget_model.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget_model.dart';
import 'package:flutter/material.dart';

class FilterWidgetConfiguration {
  final int gameIndex;
  int filterIndex;

  FilterWidgetConfiguration(
      {required this.gameIndex, required this.filterIndex});
}

class FiltersWidget extends StatefulWidget {
  final FilterWidgetConfiguration configuration;

  const FiltersWidget({super.key, required this.configuration});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  late final FiltersWidgetModel _model;

  @override
  void initState() {
    super.initState();
    _model = FiltersWidgetModel(configuration: widget.configuration);
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
    final wishesModel = WishesWidgetModelProvider.read(context)?.model;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, bottom: 20, left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      runSpacing: 5,
                      children: [
                        for (var pack in model!.packs)
                          PackIconButton(
                            pack: pack,
                          ),
                      ],
                    ),
                    const Divider(),
                    const ChoiceChipStatusFilter(),
                    const Divider(),
                  ],
                ),
              ),
            ),
            FilterButton(
              onTap: () {
                model.resetFilters();
                wishesModel?.resetFilters();
              },
              text: 'Reset filters',
            ),
          ],
        ),
      ),
    );
  }
}

class ChoiceChipStatusFilter extends StatefulWidget {
  const ChoiceChipStatusFilter({super.key});

  @override
  State<ChoiceChipStatusFilter> createState() => _ChoiceChipStatusFilterState();
}

class _ChoiceChipStatusFilterState extends State<ChoiceChipStatusFilter> {
  @override
  Widget build(BuildContext context) {
    final model = FiltersWidgetModelProvider.watch(context)?.model;
    final wishesModel = WishesWidgetModelProvider.read(context)?.model;
    final filterList = model!.choicesList;

    return Wrap(
      spacing: 8,
      children: List.generate(filterList.length, (index) {
        return ChoiceChip(
          showCheckmark: false,
          label: Text(
            filterList[index],
          ),
          selected: model.configuration.filterIndex == index,
          onSelected: (selected) {
            model.selectStatusFilter(index);
            wishesModel?.filterWishes(
                statusIndex: index, selectedExpansionPacks: model.toggledPacks);
          },
        );
      }),
    );
  }
}

class PackIconButton extends StatelessWidget {
  const PackIconButton({
    super.key,
    required this.pack,
  });

  final Pack pack;

  @override
  Widget build(BuildContext context) {
    final model = FiltersWidgetModelProvider.watch(context)?.model;
    final wishesModel = WishesWidgetModelProvider.read(context)?.model;
    final border = pack.isToggled
        ? WidgetStateProperty.all(
            const CircleBorder(
              side: BorderSide(
                width: 3,
                color: Color(0xFF315d93),
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
            onPressed: () {
              model?.togglePack(pack);
              wishesModel?.filterWishes(
                  statusIndex: model?.configuration.filterIndex ?? 0,
                  selectedExpansionPacks: model!.toggledPacks);
            },
            clipBehavior: Clip.hardEdge,
            label: Image.asset(pack.imageName),
            style: ButtonStyle(
              fixedSize: WidgetStateProperty.all(
                const Size.fromRadius(35),
              ),
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
            pack.name,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xff3d4b58),),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, required this.onTap, required this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(const Size(200, 50)),
        ),
        child: Text(
          text,
          //style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}

