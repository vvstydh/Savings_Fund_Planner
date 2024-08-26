class OnboardingItemModel {
  OnboardingItemModel(
      {required this.image, required this.text, required this.title});

  final String image;
  final String title;
  final String text;
}

List<OnboardingItemModel> contents = [
  OnboardingItemModel(
      image: 'assets/images/onboarding/onboarding1.png',
      text: 'Your personal helper to save',
      title: 'Just a few steps'),
  OnboardingItemModel(
      image: 'assets/images/onboarding/onboarding2.png',
      text: 'Set your buying goals',
      title: 'Away'),
  OnboardingItemModel(
      image: 'assets/images/onboarding/onboarding3.png',
      text: 'Learn some tips for saving',
      title: 'From your goal'),
  OnboardingItemModel(
      image: 'assets/images/onboarding/onboarding4.png',
      text: 'Enable push-notifications',
      title: 'Plan smart'),
  OnboardingItemModel(
      image: 'assets/images/onboarding/onboarding5.png',
      text: 'Please rate the app',
      title: 'Dream out loud')
];
