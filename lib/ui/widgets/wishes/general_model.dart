import 'package:achievements/ui/widgets/filters/filters_widget_model.dart';
import 'package:achievements/ui/widgets/game_selection/game_selection_widget_model.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget_model.dart';
import 'package:flutter/material.dart';

class GeneralModel extends ChangeNotifier{
  final WishesWidgetModel? wishesWidgetModel;
  final GameSelectionWidgetModel? gamesWidgetModel;
  final FiltersWidgetModel? filtersWidgetModel;

  GeneralModel(
    this.wishesWidgetModel,
    this.gamesWidgetModel,
    this.filtersWidgetModel,
  );
}

class GeneralModelProvider extends InheritedNotifier {
  final GeneralModel model;
  const GeneralModelProvider({
    super.key,
    required this.model,
    required super.child,
  }) : super(notifier: model);

  static GeneralModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GeneralModelProvider>();
  }

  static GeneralModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<GeneralModelProvider>()
        ?.widget;
    return widget is GeneralModelProvider ? widget : null;
  }

}
