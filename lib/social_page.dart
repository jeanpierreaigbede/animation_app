import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_animation/delayed_animation.dart';
import 'package:first_animation/welcome_page.dart';
import 'package:first_animation/login_page.dart';

const dred = Color(0xFFE9717D);
class SocialPage extends StatelessWidget {
  const SocialPage({Key? key}) : super(key: key);

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
          icon: Icon(Icons.arrow_back,
          color: Colors.black54,
          size: 30,),
        ),
      ),
      backgroundColor: Color(0xFFEDECF2),
      body:SingleChildScrollView(
        child: Column(
          children: [
            DelayedAnimation(
                enfant: Container(
                  child: Image.asset("images/yoga_3.png",
                  fit: BoxFit.cover,
                  ),
                ),
                delay: 1500
            ),
            DelayedAnimation(
                enfant: Container(
                  child: Column(
                children: [
                  Text("Change stars here",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.allerta(
                    fontSize: 20,
                    color: Colors.red
                  )
                  ),
                  Container(
                    margin:const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 20
                    ),
                    child: Text("Save your programm to access your personnal training programm",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,),
                  )
                ],
                  )
                ),
                delay: 1500
            ),
            DelayedAnimation(
                enfant: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return LoginPage();
                            }));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             const Icon(Icons.mail_outline_outlined,
                              color: Colors.white,
                              size: 30,
                              ),
                              const SizedBox(width: 10,),
                              Text("EMAIL",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20
                              ),),

                            ],
                          ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: dred,
                          padding: const EdgeInsets.all(13)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context){
                            return LoginPage();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.facebook,
                            size: 30,
                            ) ,
                            const SizedBox(width: 10,),
                            Text("FACEBOOK",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20
                              ),),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary:Color(0xFF56899ff),
                            padding: const EdgeInsets.all(13)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context){
                            return LoginPage();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/google.png",
                            width: 30,
                            height: 30,),
                            const SizedBox(width: 10,),
                            Text("GOOGLE",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),),
                            const SizedBox(height: 20,)
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.white,
                            padding: const EdgeInsets.all(13)
                        ),
                      ),
                      const SizedBox(height: 20,)
                    ],
                  )
                ),
                delay: 3500
            ),
          ],
        ),
      )
    );
  }
}
