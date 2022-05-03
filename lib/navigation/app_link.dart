class AppLink {
  // 1
  static const String homePath = '/home';
  static const String onboardingPath = '/onboarding';
  static const String loginPath = '/login';
  static const String profilePath = '/profile';
  static const String itemPath = '/item';
  // 2
  static const String tabPath = 'tab';
  static const String idParam = 'id';
  // 3
  String? location;
  // 4
  int? currentTab;
  // 5
  String? itemId;
  // 6
  AppLink({
    this.location,
    this.currentTab,
    this.itemId,
  });

  // TODO: Add fromLocation

  // TODO: Add toLocation
}
