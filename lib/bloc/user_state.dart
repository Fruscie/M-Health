part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

//state awal apabila aplikasi baru dijalankan
class UserInitial extends UserState {}

//state apa bila user login
class UserAuthenticated extends UserState {
  final User user;
  final String provinsi;
  const UserAuthenticated({required this.user, required this.provinsi});
  @override
  List<Object> get props => [user, provinsi];
}

//state apa bila user logout
class UserUnauthenticated extends UserState {
  const UserUnauthenticated();
  @override
  List<Object> get props => [];
}
