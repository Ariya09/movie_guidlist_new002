import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/modules/crate_member/models/register_payload.dart';

import '../reposity/register_repository.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial()) {
    RegisterRepository registerRepository = RegisterRepository();
    on<RegisterMemberEvent>((event, emit) async {
      emit(state.copyWith(status: RegisterStatus.loading));
      try {
        Response? res =
            await registerRepository.registerMember(event.registerPayload);
        if (res != null) {
          emit(state.copyWith(
            status: RegisterStatus.success,
          ));
          Modular.to.pushNamed("/MainPage");

          // Modular.get<WalletBloc>().add(GetListWalletEvent());
        } else {
          emit(state.copyWith(status: RegisterStatus.error));
        }
      } catch (e) {
        emit(state.copyWith(status: RegisterStatus.error));
      }
    });
  }
}
