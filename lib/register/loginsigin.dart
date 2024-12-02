import 'package:flutter/material.dart';
import 'package:flutter_home/register/screen/login.dart';

class LoginSigin extends StatefulWidget {
  const LoginSigin({super.key});

  @override
  State<LoginSigin> createState() => _LoginSiginState();
}

Widget UsernameText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: TextFormField(
      decoration: InputDecoration(
        iconColor: Colors.blue,
        icon: Icon(Icons.person),
        labelText: 'Username',
      ),
    ),
  );
}

Widget PasswordText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: TextFormField(
      decoration: InputDecoration(
        iconColor: Colors.blue,
        icon: Icon(Icons.lock),
        labelText: 'Password',
      ),
    ),
  );
}

class _LoginSiginState extends State<LoginSigin> {
  Widget ImageShow() {
    return CircleAvatar(
      radius: 100,
      backgroundImage: NetworkImage(
        'https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget LoginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
      onPressed: () {
        Navigator.of(context).pop();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
          
        );
      },
      child: Text(
        'Login',
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget SiginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
      onPressed: () {},
      child: Text(
        'Sigin',
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget LogInAndSigIn() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LoginButton(),
        SizedBox(
          width: 20,
        ),
        SiginButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageShow(),
          UsernameText(),
          PasswordText(),
          SizedBox(
            height: 15,
          ),
          LogInAndSigIn(),
        ],
      ),
    );
  }
}
