import 'package:flutter/material.dart';
import 'package:matchingfund/shared/shared.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
          'Selamat datang \ndi Eco-Crowdinvesting !',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget imagekonten() {
      return Center(
        child: Container(
          width: getProportionateScreenWidth(245),
          height: getProportionateScreenHeight(202),
          margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
          child: // image
              Image.asset(
            'assets/images/onboarding.png',
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget konten() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(16)),
          child: Text(
            'Bisnis Hijau bagi UMKM Tangguh \nMemanfaatkan Arsitektur Microservice \ndan Machine Learning.',
            style: blackTextStyle.copyWith(
              fontSize: 13,
              fontWeight: regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget konten2() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(8)),
          child: Text(
            'Pemulihan ekonomi ramah lingkungan \nyang akan mendorong peningkatan \nproduksi dengan biaya input dan \noperasional yang lebih rendah dan \nefisien, serta melestarikan \nlingkungan.',
            style: blackTextStyle.copyWith(
              fontSize: 13,
              fontWeight: regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget button() {
      return Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(24),
            right: getProportionateScreenWidth(24)),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(40)),
            width: double.infinity,
            height: getProportionateScreenHeight(62),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              style: TextButton.styleFrom(
                  backgroundColor: kBlackColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  )),
              child: Text(
                'Get Started',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageheader(),
            title(),
            imagekonten(),
            konten(),
            konten2(),
            button(),
          ],
        ),
      ),
    );
  }
}
