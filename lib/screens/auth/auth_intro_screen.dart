import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class AuthIntroScreen extends StatelessWidget {
  Container buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage(
            ImagePath.auth_intro_car,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  BackdropFilter buildImageFilter() {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2f1fb7).withOpacity(0.8),
        ),
      ),
    );
  }

  SafeArea buildContent() {
    return SafeArea(
      child: Center(
        child: Container(
          height: 350.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: AppStrings.appNameGet.toUpperCase(),
                        style: TextStyle(
                          fontSize: 45.0,
                        ),
                      ),
                      TextSpan(
                        text: AppStrings.rentCar.toUpperCase(),
                        style: TextStyle(
                          letterSpacing: 1.1,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: Text(
                      AppStrings.signIn,
                      style: TextStyles.buttonText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackgroundImage(),
          buildImageFilter(),
          buildContent(),
        ],
      ),
    );
  }
}
