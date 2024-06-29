class FullName {
  FullName({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;

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
