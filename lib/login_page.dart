import 'package:first_animation/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_animation/delayed_animation.dart';

const dred = Color(0xFFE9717D);
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:const Icon(Icons.close,
            color: Colors.black54,
            size: 30,),
        ),
      ),
      body: SingleChildScrollView(
        child:Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Connect email address ",style: GoogleFonts.adamina(
                  color: Colors.red,
                  fontSize: 23
              ),),
             const SizedBox(height: 30,),
              Text("It's recommended to connect your email address for us to better protect your information",
                style: GoogleFonts.libreBaskerville(
                    fontSize: 18,
                    color: Colors.grey
                ),),
              LoginForm(),
              DelayedAnimation(
                  enfant: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 20
                    ),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: null,
                      child: Text("CONFIRM",
                      style: GoogleFonts.libreBaskerville(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),),
                      style: TextButton.styleFrom(
                        backgroundColor: dred,
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ),
            delay: 2500)
            ],
          ),
        )
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20
      ),
      child: Column(
        children: [
          DelayedAnimation(
              enfant: TextField(
          decoration: InputDecoration(
            labelText: "Your email",
            labelStyle: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 18
            ),
            hintText: "emailname@gmail.com",
            hintStyle:const TextStyle(
              color: Colors.grey,
              fontSize: 13
            )
          ),
          ),
              delay: 2500),
          SizedBox(height: 20,),
          DelayedAnimation(
              enfant: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText:_obscureText,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 18
                    ),
                    hintText: "password",
                    hintStyle:const TextStyle(
                        color: Colors.grey,
                        fontSize: 13
                    ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _obscureText= !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility :Icons.ten_mp_sharp,
                    size: 30,
                        color: Colors.black,),
                  )
                ),
              ),
              delay: 3500)
        ],
      ),
    );
  }
}

