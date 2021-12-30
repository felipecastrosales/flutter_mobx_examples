class FullName {
  String firstName;
  String lastName;

  FullName({
    required this.firstName,
    required this.lastName,
  });

  FullName copyWith({
    String? firstName,
    String? lastName,
  }) {
    return FullName(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }
}
