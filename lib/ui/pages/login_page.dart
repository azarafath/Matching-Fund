import 'package:flutter/material.dart';
import 'package:matchingfund/ui/ui.dart';

import '../../shared/shared.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

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
          'Selamat datang',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget imagekonten() {
      return Center(
        child: Container(
          width: getProportionateScreenWidth(170),
          height: getProportionateScreenHeight(170),
          margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
          child: // image
              Image.asset(
            'assets/images/img_login.png',
          ),
        ),
      );
    }

    Widget emailinput() {
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
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        // input harus email
                        keyboardType: TextInputType.emailAddress,
                        style: blackTextStyle,
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_rounded,
                            size: 20,
                            color: // jika email kosong maka akan menampilkan warna abu abu
                                emailController.text.isEmpty
                                    ? kGreyColor
                                    : kBlackColor,
                          ),
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
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: blackTextStyle,
                        obscureText: obsecureText,
                        controller: passwordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outlined,
                            size: 20,
                            color: passwordController.text.isEmpty
                                ? kGreyColor
                                : kBlackColor,
                          ),
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
          ],
        ),
      );
    }

    Widget buttonlogin() {
      return CustomButton(
        label: 'Masuk',
        onPressed: () {
          Navigator.pushNamed(context, '/homepage');
        },
      );
    }

    Widget signup() {
      return Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tidak memiliki akun? ',
              style: blackTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/registerpage');
              },
              child: Text(
                'Daftar Sekarang !',
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
                imagekonten(),
                emailinput(),
                passwordInput(),
                buttonlogin(),
                signup(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
