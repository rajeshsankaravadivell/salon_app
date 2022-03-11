
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/bottomrouter.dart';
import 'package:salon_app/screens/homepage.dart';
import 'package:salon_app/screens/registrationpage.dart';

class Login1Widget extends StatefulWidget {
  const Login1Widget({Key? key}) : super(key: key);

  @override
  _Login1WidgetState createState() => _Login1WidgetState();
}

class _Login1WidgetState extends State<Login1Widget> {
  TextEditingController? emailAddressController;
  TextEditingController? passwordController;
  bool? passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor:Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,

        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/loginbackground.png',

                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailAddressController,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_pin_rounded),
                    labelText: 'Email Address',
                    labelStyle:
                    TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: 'Enter your email here...',
                    hintStyle:
                    TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEE4E3A),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEE4E3A),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFBEEE2),
                    contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                  ),
                  style:
                  TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF2B343A),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: !passwordVisibility!,
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: 'Enter your email here...',
                    hintStyle: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEE4E3A),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEE4E3A),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFBEEE2),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility!,
                      ),
                      child: Icon(
                        passwordVisibility!
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF95A1AC),
                        size: 22,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF2B343A),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SizedBox(
                    width: getWidth(context)*0.50,
                    height: getHeight(context)*0.05,
                    child: ElevatedButton(onPressed: (){
                      Get.to(()=>BottomNavRouter());

                    }, child:Text('login'))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text('Forget Password ?')),
              ),


              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(onPressed: (){
                      Get.to(RegisterationWidget());

                    }, child: Text('Register'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
