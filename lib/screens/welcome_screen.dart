import 'package:flutter/material.dart';
import 'package:loginflutter/provider/auth_provider.dart';
import 'package:loginflutter/screens/RegistrationScreen.dart';
import 'package:loginflutter/screens/home_screen.dart';
import 'package:loginflutter/widgets/button.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

    final ap = Provider.of<AuthProvider>(context,listen: false);   // Provider is not listning on the home page


    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/image1.png",height: 300,),
                const SizedBox(height: 30,),
                const Text(
                  "Lets get Started",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Never a better time than now to start..!",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38 ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height:20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: customButton(
                    onPressed: (){
                      ap.isSignedIn == true ? Navigator.push(context,MaterialPageRoute(builder: (context)=>
                        const homepage(),
                      )) : Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationScreen()));
                    },

                    text: 'Get started',

                  ),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
