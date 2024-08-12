import 'package:achievements/domain/entities/pack.dart';
import 'package:achievements/ui/widgets/filters/filters_widget_model.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget_model.dart';
import 'package:flutter/material.dart';

class FiltersWidget extends StatefulWidget {
  final int gameIndex;

  const FiltersWidget({super.key, required this.gameIndex});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  late final FiltersWidgetModel _model;

  @override
  void initState() {
    super.initState();
    _model = FiltersWidgetModel(gameIndex: widget.gameIndex);
  }

  @override
  Widget build(BuildContext context) {
    return FiltersWidgetModelProvider(
      model: _model,
      child: _FiltersWidgetBody(),
    );
  }
}

class _FiltersWidgetBody extends StatefulWidget {
  _FiltersWidgetBody();

  @override
  State<_FiltersWidgetBody> createState() => _FiltersWidgetBodyState();
}

class _FiltersWidgetBodyState extends State<_FiltersWidgetBody> {
  String _filterStatus = 'All';

  @override
  Widget build(BuildContext context) {
    final model = FiltersWidgetModelProvider.watch(context)?.model;
    final wishesModel = WishesWidgetModelProvider.read(context)?.model;
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
                    Wrap(
                      spacing: 5,
                      children: [
                        ChoiceChip(
                          label: const Text('All'),
                          selected: _filterStatus == 'All',
                          onSelected: (bool selected) {
                            setState(() {
                              _filterStatus = selected ? 'All' : _filterStatus;
                            });
                          },
                        ),
                        ChoiceChip(
                          label: const Text('Completed'),
                          selected: _filterStatus == 'Completed',
                          onSelected: (bool selected) {
                            setState(() {
                              _filterStatus =
                                  selected ? 'Completed' : _filterStatus;
                            });
                          },
                        ),
                        ChoiceChip(
                          label: const Text('Uncompleted'),
                          selected: _filterStatus == 'Uncompleted',
                          onSelected: (bool selected) {
                            setState(() {
                              _filterStatus =
                                  selected ? 'Uncompleted' : _filterStatus;
                            });
                          },
                        ),
                      ],
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
            FilterButton(
              onTap: () {
                wishesModel?.filterByCompletionStatus();
                //wishesModel?.filterByPack(model.toggledPacks);
                model.closeEndDrawer(context);
              },
              text: 'Filter wishes',
            ),
            const SizedBox(
              height: 15,
            ),
            FilterButton(
              onTap: () {
                model.resetFilters();
                wishesModel?.filterByPack(model.toggledPacks);
              },
              text: 'Reset filters',
            ),
          ],
        ),
      ),
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
    final border = pack.isToggled
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
            onPressed: () => model?.togglePack(pack),
            clipBehavior: Clip.hardEdge,
            label: Image.asset(pack.imageName),
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
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
