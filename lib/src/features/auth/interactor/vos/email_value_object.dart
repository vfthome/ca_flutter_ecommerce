final class Email {
  final String emailAddress;

  Email({
    required this.emailAddress,
  });

  bool get isValid => emailAddress.isNotEmpty;
}
