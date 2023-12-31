import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hospital_pulse_point/presentation/register_screen/models/register_model.dart';
part 'register_event.dart';
part 'register_state.dart';

/// A bloc that manages the state of a Register according to the event that is dispatched to it.
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(RegisterState initialState) : super(initialState) {
    on<RegisterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegisterInitialEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(
        usernameInputController: TextEditingController(),
        emailInputController: TextEditingController(),
        emailInputController1: TextEditingController(),
        emailInputController2: TextEditingController(),
        passwordInputController: TextEditingController(),
        passwordInputController1: TextEditingController(),
        confirmPasswordController: TextEditingController()));
  }
}
