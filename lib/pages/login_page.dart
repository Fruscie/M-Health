import 'package:flutter/material.dart';
import 'package:mhealth/bloc/user_bloc.dart';
import 'package:mhealth/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //controller untuk menampung isi textfield dari username
  final usernameController = TextEditingController();
  //controller untuk menampung isi textfield dari password
  final passwordController = TextEditingController();
  //formKey digunakan untuk mengecek apakah username dan password
  //sesuai ketentuan
  final _formKey = GlobalKey<FormState>();
  // list provinsi untuk dropdown
  List<String> provinsiListItem = [
    'Pilih Provinsi',
    'Belitung',
    'Bangka',
    'Surabaya'
  ];

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String dropDownValue = 'Pilih Provinsi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      //tambah padding buat keseluruhan sisi
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(25.0),
            //column dan center untuk text, textfield dan button
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //logo mhealth
                      Image.asset(
                        'assets/images/image_mhealth.png',
                      ),
                      //textfield email
                      //username : gilang
                      //password : 123456
                      TextFormField(

                          //cek input apakah sesuai kosong atau kurang dari 6
                          validator: (String? username) {
                            if (username!.isEmpty || username.length < 6) {
                              return 'Please enter valid email address';
                            }
                            return null;
                          },
                          controller: usernameController,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.email),
                              labelText: 'Masukkan Email')),
                      //textfield password
                      TextFormField(
                          //cek input apakah sesuai kosong atau kurang dari 6
                          validator: (String? password) {
                            if (password!.isEmpty || password.length < 6) {
                              return 'Please enter valid password';
                            }
                            return null;
                          },
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.lock),
                              labelText: 'Masukkan Password')),

                      // dropdown untuk pilih provinsi
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                            icon: Icon(Icons.location_city)),
                        items: provinsiListItem.map((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                        value: dropDownValue,
                        //cek apakah valuenya 'Pilih provinsi'
                        validator: (value) => value == provinsiListItem[0]
                            ? 'field required'
                            : null,
                        onChanged: (newValue) {
                          setState(() {
                            dropDownValue = newValue.toString();
                          });
                        },
                      ),
                      //kasih jarak antar form field dan button
                      const SizedBox(
                        height: 10,
                      ),

                      //button login
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 40,
                        child: Text(
                          'LOGIN',
                          style: primaryTextStyle.copyWith(
                              color: secondaryTextColor, fontSize: 25),
                        ),
                        shape: const StadiumBorder(),
                        onPressed: () {
                          //cek apakah semua form sesuai kriteria
                          if (_formKey.currentState!.validate()) {
                            //panggil event UserChanged dan di proses di UserBloc
                            context.read<UserBloc>().add(UserChanged(
                                username: usernameController.text,
                                password: passwordController.text,
                                provinsi: dropDownValue));
                          }
                        },
                        color: primaryColor,
                      )
                    ]),
              ),
            )),
      ),
    );
  }
}
