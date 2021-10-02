part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

//event userchanged menerima username dan password dari login button
class UserChanged extends UserEvent {
  final String username;
  final String password;
  final String provinsi;
  const UserChanged(
      {required this.username, required this.password, required this.provinsi});
  @override
  List<Object> get props => [username, password];
}

//event untuk logout akun
class UserLogout extends UserEvent {
  const UserLogout();
  @override
  List<Object> get props => [];
}
