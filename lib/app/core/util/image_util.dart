extension ImagePath on String {
  String get toSvg => "assets/icons/$this.svg";
  String get toSubjectIconSvg => "assets/icons/subject_icons/$this";
  String get toBiologyIconSvg => "assets/icons/chapter_icons/biology/$this";

  String get toChemistryIconSvg => "assets/icons/chapter_icons/chemistry/$this";

  String get toMathematicsIconSvg =>
      "assets/icons/chapter_icons/mathematics/$this";

  String get toPhysicsIconSvg => "assets/icons/chapter_icons/physics/$this";

  String get toPng => "assets/icons/$this.png";
  String get toJpg => "assets/icons/$this.jpg";
}
