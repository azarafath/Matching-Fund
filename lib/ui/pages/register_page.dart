import 'package:flutter/material.dart';

import '../../shared/shared.dart';
import '../widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController addressController = TextEditingController(text: '');
  TextEditingController hobyController = TextEditingController(text: '');
  TextEditingController schoolController = TextEditingController(text: '');
  late bool obsecureText;

  @override
  void initState() {
    super.initState();
    obsecureText = true;
  }

  @override
  Widget build(BuildContext context) {
    Widget imageheader() {
      return Container(
        width: getProportionateScreenWidth(185),
        height: getProportionateScreenHeight(150),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_onboarding.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget title() {
      return Center(
        child: Text(
          'Register Sekarang !',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget nameinput() {
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(32)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(24),
                  right: getProportionateScreenWidth(24)),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(24),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: blackTextStyle,
                          controller: nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nama Lengkap',
                            hintStyle: greyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailnput() {
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(24),
                  right: getProportionateScreenWidth(24)),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(24),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: blackTextStyle,
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: greyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(
            top: getProportionateScreenHeight(16),
            left: getProportionateScreenWidth(24),
            right: getProportionateScreenWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(24),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: blackTextStyle,
                          obscureText: obsecureText,
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: greyTextStyle,
                            suffixIcon: IconButton(
                              icon: Icon(
                                obsecureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: kBlackColor,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  obsecureText = !obsecureText;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget addressinput() {
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(24),
                  right: getProportionateScreenWidth(24)),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(24),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: blackTextStyle,
                          controller: addressController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Alamat',
                            hintStyle: greyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget hobyinput() {
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(24),
                  right: getProportionateScreenWidth(24)),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(24),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: blackTextStyle,
                          controller: hobyController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Hobi',
                            hintStyle: greyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget schoolinput() {
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(24),
                  right: getProportionateScreenWidth(24)),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(24),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: blackTextStyle,
                          controller: schoolController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Asal Sekolah',
                            hintStyle: greyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonregister() {
      return CustomButton(
        label: 'Daftar',
        onPressed: () {
          Navigator.pushNamed(context, '/loginpage');
        },
      );
    }

    Widget haveaccount() {
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah memiliki akun? ',
              style: blackTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              child: Text(
                'Masuk',
                style: greenTektStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageheader(),
                title(),
                nameinput(),
                emailnput(),
                passwordInput(),
                addressinput(),
                hobyinput(),
                schoolinput(),
                buttonregister(),
                haveaccount(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
