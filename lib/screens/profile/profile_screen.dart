import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/profile/widgets/widgets.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBarWithDrawer(_scaffoldKey),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 20.0,
                  left: 25.0,
                ),
                child: Text(
                  AppStrings.profile,
                  style: TextStyles.profileTitle,
                ),
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 10.0,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 50.0,
                      ),
                    ),
                    Positioned(
                      right: -10,
                      top: 45.0,
                      child: Opacity(
                        opacity: 0.7,
                        child: SizedBox(
                          width: 35.0,
                          height: 35.0,
                          child: ElevatedButton(
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 18.0,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: ColorPalette.profileText,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ProfileInfo(),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ProfileInput(
                      name: AppStrings.name,
                      hint: AppStrings.name.toLowerCase(),
                    ),
                    const SizedBox(height: 10.0),
                    ProfileInput(
                      name: AppStrings.surName,
                      hint: AppStrings.surName.toLowerCase(),
                    ),
                    const SizedBox(height: 10.0),
                    ProfileInput(
                      inputType: TextInputType.emailAddress,
                      name: AppStrings.email,
                      hint: 'почту',
                    ),
                    const SizedBox(height: 10.0),
                    ProfileInput(
                      inputType: TextInputType.number,
                      name: AppStrings.phone,
                      hint: AppStrings.phone.toLowerCase(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 35.0,
                ),
                child: FilledButton(
                  title: AppStrings.save,
                  size: double.infinity,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
