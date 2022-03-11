
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/screens/bottomrouter.dart';
import 'package:salon_app/screens/homepage.dart';

class RegisterationWidget extends StatefulWidget {
  const RegisterationWidget({Key? key}) : super(key: key);

  @override
  _RegisterationWidgetState createState() => _RegisterationWidgetState();
}

class _RegisterationWidgetState extends State<RegisterationWidget> {
  TextEditingController? emailAddressController1;
  TextEditingController? emailAddressController2;
  TextEditingController? emailAddressController3;
  TextEditingController? emailAddressController4;
  TextEditingController? emailAddressController5;
  TextEditingController? emailAddressController6;
  TextEditingController? emailAddressController7;
  TextEditingController? textController8;
  bool? passwordVisibility1;
  TextEditingController? textController9;
  bool? passwordVisibility2;
  TextEditingController? textController10;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController1 = TextEditingController();
    emailAddressController2 = TextEditingController();
    emailAddressController3 = TextEditingController();
    emailAddressController4 = TextEditingController();
    emailAddressController5 = TextEditingController();
    emailAddressController6 = TextEditingController();
    emailAddressController7 = TextEditingController();
    textController8 = TextEditingController();
    passwordVisibility1 = false;
    textController9 = TextEditingController();
    passwordVisibility2 = false;
    textController10 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Group_2980.png',
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: emailAddressController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your Business Name',
                            hintStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFBEEE2),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            prefixIcon: Icon(
                              Icons.location_history_outlined,
                              color: Color(0xFFEE4E3A),
                            ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: TextFormField(
                          controller: emailAddressController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your Name',
                            hintStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFBEEE2),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            prefixIcon: Icon(
                              Icons.location_history_sharp,
                              color: Color(0xFFEE4E3A),
                            ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: TextFormField(
                          controller: emailAddressController3,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your Phone No',
                            hintStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFBEEE2),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            prefixIcon: Icon(
                              Icons.phone_sharp,
                              color: Color(0xFFEE4E3A),
                            ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: TextFormField(
                          controller: emailAddressController4,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your Email ',
                            hintStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFBEEE2),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            prefixIcon: Icon(
                              Icons.mail_sharp,
                              color: Color(0xFFEE4E3A),
                            ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: TextFormField(
                          controller: emailAddressController5,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your City',
                            hintStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFBEEE2),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            prefixIcon: Icon(
                              Icons.location_city,
                              color: Color(0xFFEE4E3A),
                            ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: TextFormField(
                          controller: emailAddressController6,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter Zipcode',
                            hintStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFBEEE2),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Color(0xFFEE4E3A),
                            ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: TextFormField(
                          controller: emailAddressController7,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter Country',
                            hintStyle:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x6EEE4E3A),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFBEEE2),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            prefixIcon: Icon(
                              Icons.countertops,
                              color: Color(0xFFEE4E3A),
                            ),
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
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                      child: TextFormField(
                        controller: textController8,
                        obscureText: !passwordVisibility1!,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          filled: true,
                          fillColor: Color(0xFFFBEEE2),
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFEE4E3A),
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                                  () => passwordVisibility1 = !passwordVisibility1!,
                            ),
                            child: Icon(
                              passwordVisibility1!
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF2B343A),
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                      child: TextFormField(
                        controller: textController9,
                        obscureText: !passwordVisibility2!,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Confirm Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          filled: true,
                          fillColor: Color(0xFFFBEEE2),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFEE4E3A),
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                                  () => passwordVisibility2 = !passwordVisibility2!,
                            ),
                            child: Icon(
                              passwordVisibility2!
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF2B343A),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(90, 20, 90, 0),
                      child: TextFormField(
                        controller: textController10,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Attachment',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          filled: true,
                          fillColor: Color(0xFFFBEEE2),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                          prefixIcon: Icon(
                            Icons.add_box,
                            color: Color(0xFFEE4E3A),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF2B343A),
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 50, 60, 40),
                child: ElevatedButton(onPressed: (){
                  Get.to(BottomNavRouter());
                },child: Text('Button'),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}