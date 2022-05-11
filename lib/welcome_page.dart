import 'package:first_animation/main.dart';
import 'package:first_animation/social_page.dart';
import 'package:flutter/material.dart';
import 'package:first_animation/delayed_animation.dart';
import 'package:google_fonts/google_fonts.dart';

const dred = Color(0xFFE9717D);

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                  enfant:Container(
                    height: 170,
                    child:Image.asset("images/yoga_1.png",
                    fit: BoxFit.cover,),
                  ),
                  delay: 1500),
              DelayedAnimation(
                  enfant:Container(
                    child:Image.asset("images/yoga_2.jpeg",
                      fit: BoxFit.cover,),

                  ),
                  delay: 2500
              ),
              DelayedAnimation(
                  enfant:Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 40,
                    ),
                    child: Text("Get filter ,stronger, end embrassed a helthier lifestyle",
                    style: GoogleFonts.abel(
                      fontSize: 18
                    ),
                    textAlign: TextAlign.center,
                    )
                  ),
                  delay: 3500),
              DelayedAnimation(
                  enfant:Container(
                    decoration:const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25)
                      )
                    ),
                    height: 40,
                    width: double.infinity,
                    child:TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SocialPage();
                        }));
                      },
                      child: Text("GET STARTED",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),),
                      style: TextButton.styleFrom(
                        shape:const StadiumBorder(),
                        backgroundColor: dred,
                      ),
                    )
                  ),
                  delay: 4500)
            ],
          ),
        ),
      ),
    );
  }
}
