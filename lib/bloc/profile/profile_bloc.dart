import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:e_commerce_flutter/models/user/profile_response.dart';
import 'package:e_commerce_flutter/service/ServiceApi.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  @override
  // TODO: implement initialState
  ProfileState get initialState => InitProfileState();

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is GetProfileEvent) {
      final response = await _findProfile(event.context, event.id);
      if (response.body == 200) {
        // i get the correct response
        yield OnProfileLoadedSuccess(response.body);
      } else {
        yield OnProfileLoadedFailed(response.error);
      }
    }
  }
}

Future<Response> _findProfile(BuildContext context, String id) async {
  final response = await Provider.of<ServiceApi>(context).findProfile(id);
  return response;
}
