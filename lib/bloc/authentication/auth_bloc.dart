import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:e_commerce_flutter/models/authentication/login_response.dart';
import 'package:e_commerce_flutter/models/authentication/register_response.dart';
import 'package:e_commerce_flutter/service/ServiceApi.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  @override
  AuthState get initialState => AuthInitial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is DoRegisterEvent) {
      final response = await _doRegister(event.context, event.body);
      if (response.status == 200)
        yield DoRegisterSuccessState(result: response);
    }

    if (event is DoLoginEvent) {
      final response = await _doLogin(event.context, event.body);
      if (response.status == 200 && response.jwt.isNotEmpty) {
        yield DoLoginSuccessState(result: response);
      }
    }
  }
}

Future<RegisterResponse> _doRegister(
    BuildContext context, Map<String, dynamic> body) async {
  final response = await Provider.of<ServiceApi>(context).register(body);
  return response.body;
}

Future<LoginResponse> _doLogin(
    BuildContext context, Map<String, dynamic> body) async {
  final response = await Provider.of<ServiceApi>(context).login(body);
  return response.body;
}
