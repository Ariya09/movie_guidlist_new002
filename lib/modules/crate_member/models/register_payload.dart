class RegisterPayload {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? imgProfile;

  RegisterPayload({
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.imgProfile,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'imgProfile': imgProfile,
    };
  }
}
