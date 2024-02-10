class OnboardContent {
  String asset;
  String title;
  String subtitle;
  String description;

  OnboardContent(
      {required this.asset,
      required this.title,
      required this.subtitle,
      required this.description});

  List<OnboardContent> onbContents = [
    OnboardContent(
      asset: "assets/animation/intro1.json",
      title: "Swift Emergency Assistance",
      subtitle: "Your Lifeline in Urgency",
      description:
          "Welcome to QuickCare-your go-to app for immediate access to vital emergency services. Whether you need a hospital, an ambulance, police assistance, fire services, or a blood donor, QuickCare has you covered. Let's get started to ensure your safety and well-being.",
    ),
    OnboardContent(
      asset: "assets/animation/intro2.json",
      title: "Quick Access, Quick Response",
      subtitle: "User-Friendly Interface",
      description:
          "QuickCare is designed with simplicity in mind. Easily navigate through our user-friendly interface to find and request assistance with just a few taps. Whether it's a medical emergency or you need urgent help from authorities, QuickCare ensures instant access to the right services when you need them the most.",
    ),
    OnboardContent(
      asset: "assets/animation/intro3.json",
      title: " Localized Assistance",
      subtitle: "Help Where You Are",
      description:
          "QuickCare utilizes your location to provide real-time information about nearby hospitals, ambulance services, police stations, fire stations, and blood donation centers. Be assured that help is just a click away. Your safety matters, and QuickCare is here to ensure that vital services are easily accessible whenever you need them.",
    )
  ];
}
