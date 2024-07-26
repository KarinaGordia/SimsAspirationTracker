import 'package:achievements/ui/widgets/game_selection/game_selection_widget_model.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget_model.dart';
import 'package:flutter/material.dart';

class GeneralModel extends ChangeNotifier {
  final WishesWidgetModel wishesWidgetModel;
  final GameSelectionWidgetModel gameWidgetModel;

  GeneralModel({required this.wishesWidgetModel, required this.gameWidgetModel});
}

class GeneralModelProvider extends InheritedWidget {
  final GeneralModel model;

  const GeneralModelProvider ({
    super.key,
    required this.model,
    required super.child,
  });

  static GeneralModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GeneralModelProvider>();
  }

    static GeneralModelProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<GeneralModelProvider>()?.widget;
    return widget is GeneralModelProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(GeneralModelProvider oldWidget) {
    return true;
  }
}
