import 'package:shared_preferences/shared_preferences.dart';

class SettingsStorageModel {
  late final SharedPreferences prefs;

  SettingsStorageModel() {
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  static const _isFirstPageShowedKey = 'first_page_showed';
  static const _selectedGameKey = 'selected_game';

  bool isFirstPageShowed() {
    final selected = prefs.getBool(_isFirstPageShowedKey);
    return selected ?? false;
  }

  Future<void> setFirstPageShowed(bool selected) async {
    await prefs.setBool(_isFirstPageShowedKey, selected);
  }

  int getSelectedGameIndex() {
    final index = prefs.getInt(_selectedGameKey);
    return index ?? 0;
  }

  Future<void> setSelectedGameIndex(int gameIndex) async {
    await prefs.setInt(_selectedGameKey, gameIndex);
  }
}