abstract interface class SettingsRepositoryInterface {

  bool isFirstPageShowed();
  Future<void> setFirstPageShowed(bool showed);

  int? getSelectedGameIndex();
  Future<void> setSelectedGameIndex(int gameIndex);
}