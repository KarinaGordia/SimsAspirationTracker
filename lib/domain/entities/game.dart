import 'package:achievements/domain/entities/pack.dart';

class Game {
  final String key;
  final String name;
  final String imageName;
  final String iconName;
  final Map<String, Pack> packs;

  Game(
      {required this.key,
      required this.name,
      required this.imageName,
      required this.iconName,
      required this.packs});
}
