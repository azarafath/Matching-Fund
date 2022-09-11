import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
import '../../services/services.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UserEvent>((event, emit) async {
      if (event is GetUser) {
        try {
          emit(UserLoading());

          final res = await UserServices().getUser();
          emit(UserSuccess(res));
        } catch (e) {
          emit(UserFailed(e.toString()));
        }
      }
    });
  }
}
