import 'package:achievements/repositories/settings/settings_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository implements SettingsRepositoryInterface {
  final SharedPreferences preferences;

  SettingsRepository({required this.preferences});

  static const _isFirstPageShowedKey = 'first_page_showed';
  static const _selectedGameKey = 'selected_game';

  @override
  bool isFirstPageShowed() {
    final showed = preferences.getBool(_isFirstPageShowedKey);
    return showed ?? false;
  }

  @override
  Future<void> setFirstPageShowed(bool showed) async {
    await preferences.setBool(_isFirstPageShowedKey, showed);
  }

  @override
  int? getSelectedGameIndex() {
    final index = preferences.getInt(_selectedGameKey);
    return index;
  }

  @override
  Future<void> setSelectedGameIndex(int gameIndex) async {
    await preferences.setInt(_selectedGameKey, gameIndex);
  }
}