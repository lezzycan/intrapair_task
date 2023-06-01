class OnboardModel {
  String title;
  String description;
  OnboardModel({
    required this.title,
    required this.description,
  });

  int selectedPages = 0;
  final List<OnboardModel> _onboarding = [
    OnboardModel(
        title: 'Join the best tailoring app',
        description: 'Take your tailoring to the next level with Stitch Vine')
  ];

  String getTitle(int index) {
    return _onboarding[index].title;
  }

  String getDescription(int index) {
    return _onboarding[index].description;
  }
}
