class AppLink {
  // 1
  static const String homePath = '/home';
  static const String onboardingPath = '/onboarding';
  static const String loginPath = '/login';
  static const String profilePath = '/profile';
  static const String itemPath = '/item';
  // 2
  static const String tabParam = 'tab';
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

  static AppLink fromLocation(String? location) {
    // 1
    location = Uri.decodeFull(location ?? '');
    // 2
    final uri = Uri.parse(location);
    final params = uri.queryParameters;

    // 3
    final currentTab = int.tryParse(params[AppLink.tabParam] ?? '');
    // 4
    final itemId = params[AppLink.idParam];
    // 5
    final link = AppLink(
      location: uri.path,
      currentTab: currentTab,
      itemId: itemId,
    );
    // 6
    return link;
  }

  // TODO: Add toLocation
}
