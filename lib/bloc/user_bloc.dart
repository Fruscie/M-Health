import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mhealth/api/api_provider.dart';
import 'package:mhealth/model/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  //manggil class Api Provider dengan variable apiProvider
  ApiProvider apiProvider = ApiProvider();

  UserBloc() : super(UserInitial()) {
    //event jika ada perubahan pada user
    on<UserChanged>((event, emit) async {
      //panggil method login dari api provider dan datanya
      //disimpan ke dataUser
      final dataUser = await apiProvider.login(event.username, event.password);
      //jika dataUser ada maka akan memanggil state UserAuthenticated
      //yang dimana user tersebut berhasil login
      //jika gagal maka akan memanggil userUnauthenticated
      if (dataUser != null) {
        emit(UserAuthenticated(user: dataUser, provinsi: event.provinsi));
      } else {
        emit(const UserUnauthenticated());
      }
    });
    //event jika user logout dan langsung memanggil
    //state UserUnauthenticated
    on<UserLogout>((event, emit) async {
      emit(const UserUnauthenticated());
    });
  }
}
