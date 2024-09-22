part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final String otp;
  final bool isUpdateDevice;
  final RegisterStatus status;
  final RegisterPayload? registerPayload;

  const RegisterState({
    this.otp = "",
    this.isUpdateDevice = false,
    this.status = RegisterStatus.initial,
    this.registerPayload,
  });
  RegisterState.initial()
      : this(
          otp: '',
          status: RegisterStatus.initial,
        );
  RegisterState copyWith({
    String? otp,
    bool? isUpdateDevice,
    RegisterStatus? status,
    RegisterPayload? registerPayload,
  }) {
    return RegisterState(
      otp: otp ?? this.otp,
      isUpdateDevice: isUpdateDevice ?? this.isUpdateDevice,
      status: status ?? this.status,
      registerPayload: registerPayload ?? this.registerPayload,
    );
  }

  @override
  List<Object?> get props => [otp, status, registerPayload];
}

enum RegisterStatus { initial, loading, success, error }
