class UserProfile {
  final String name;
  final String membershipType;
  final String memberId;
  final String memberSince;
  final String imageUrl;
  final int currentPoints;
  final int totalPoints;
  final String currentTier;
  final String nextTier;

  UserProfile({
    required this.name,
    required this.membershipType,
    required this.memberId,
    required this.memberSince,
    required this.imageUrl,
    required this.currentPoints,
    required this.totalPoints,
    required this.currentTier,
    required this.nextTier,
  });

  double get progressPercentage => currentPoints / totalPoints;
}
