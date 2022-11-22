class User {
  final String username;
  final String profileImageUrl;

  Set<String> following = {};
  Set<String> friends = {};
  Set<String> groups = {};

  User(this.username, this.profileImageUrl);
}
