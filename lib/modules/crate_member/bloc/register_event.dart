part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class GetRegisterEvent extends RegisterEvent {
  final String otp;
  final bool isUpdateDevice;

  GetRegisterEvent({required this.otp, required this.isUpdateDevice});
}

class RegisterMemberEvent extends RegisterEvent {
  final RegisterPayload registerPayload;
  // final List movieType;
  //final BuildContext context;

  // RegisterMemberEvent({required this.registerPayload, required this.movieType});
  RegisterMemberEvent({
    required this.registerPayload,
  });
}
