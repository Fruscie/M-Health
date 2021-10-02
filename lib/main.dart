import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhealth/pages/chat_page.dart';
import 'package:mhealth/pages/home_page.dart';

import 'bloc/user_bloc.dart';
import 'pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false, //matiin mode banner debug
        home: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            //cek apakah statenya mereturn UserAuthenticated
            //jika iya maka langsung diarahkan ke HomePage()
            //jika tidak maka ke LoginPage()
            if (state is UserAuthenticated) {
              return HomePage(
                user: state.user,
                provinsi: state.provinsi,
              );
            } else {
              return const LoginPage();
              // return const ChatPage();
            }
          },
        ),
      ),
    );
  }
}
