import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_porfolio/globals/app_assets.dart';
import 'package:my_porfolio/globals/app_buttons.dart';
import 'package:my_porfolio/globals/app_colors.dart';
import 'package:my_porfolio/globals/app_text_styles.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_porfolio/globals/constants.dart';
import 'package:my_porfolio/views/about_me.dart';
import 'package:my_porfolio/views/my_portfolios.dart';
import 'package:my_porfolio/views/my_services.dart';
import 'package:my_porfolio/wigets/profile_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Portfolio', style: AppTextStyles.headerTextStyle()),
              const Spacer(),
              Text('Home', style: AppTextStyles.headerTextStyle()),
              const SizedBox(width: 30,),
              Text('About', style: AppTextStyles.headerTextStyle()),
              const SizedBox(width: 30,),
              Text('Services', style: AppTextStyles.headerTextStyle()),
              const SizedBox(width: 30,),
              Text('Portfolio', style: AppTextStyles.headerTextStyle()),
              const SizedBox(width: 30,),
              Text('Contract', style: AppTextStyles.headerTextStyle()),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.05,
          // left: size.width * 0.1,
          // right: size.width * 0.1,
        ),
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  duration: const Duration(milliseconds:1200),
                  child: Text('Hello, It\'s me', style:  AppTextStyles.montserratStyle(color: Colors.white),)),
                Constants.sizebox(height: 15),
                FadeInRight(
                    duration: const Duration(milliseconds: 1300),
                    child: Text(
                      'John Kendric',
                      style: AppTextStyles.headingStyle(),
                    )),
                Constants.sizebox(height: 15),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Row(
                    children: [
                      Text('And I\'m a ', style:  AppTextStyles.montserratStyle(color: Colors.white),),
                      AnimatedTextKit (
                        animatedTexts: [
                          TypewriterAnimatedText('Web Developer!', textStyle: AppTextStyles.montserratStyle(color: Colors.blue)),
                          TypewriterAnimatedText('Youtube', textStyle: AppTextStyles.montserratStyle(color: Colors.blue)),
                          TypewriterAnimatedText('Flutter dev', textStyle: AppTextStyles.montserratStyle(color: Colors.blue)),
                          TypewriterAnimatedText('...', textStyle: AppTextStyles.montserratStyle(color: Colors.blue)),
                        ],
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 1400),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                    ],
                  ),
                ),
                Constants.sizebox(height: 15),
                FadeInDown(
                  duration: const Duration(milliseconds: 1600),
                  child: SizedBox(
                    width: size.width*0.5,
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                    'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                    ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                    'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                    'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                    'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'
                    ' officia deserunt mollit anim id est laborum.', style: AppTextStyles.normalTexStyle(),),
                  ),
                ),
                Constants.sizebox(height: 22),
                FadeInUp(
                  duration: const Duration(milliseconds: 1600),
                  child: Row(children: [
                    buildSocialButton(asset: AppAssets.facebook),
                    Constants.sizebox(width: 11),
                    buildSocialButton(asset: AppAssets.git),
                    Constants.sizebox(width: 11),
                    buildSocialButton(asset: AppAssets.intagram),
                    Constants.sizebox(width: 11),
                    buildSocialButton(asset: AppAssets.linked),
                    Constants.sizebox(width: 11),
                    buildSocialButton(asset: AppAssets.twitter),
                        ],
                      ),
                ),
                  Constants.sizebox(height: 22),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: AppButtons.buildMaterialButton(buttonName: 'Download CV',onTap:() {},))
                  ],
            ),
             const ProfileAnimation(),
          ],
          ),
            Constants.sizebox(height: 200),
            const AboutMe(),
            const MyServices(),
            const MyPortfolio(),
          ],
        ),
      ),
    );
  }


  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(500),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lawGreen,
        child: Image.asset(
          asset,
          width: 10,
          height: 12,
          color: AppColors.themeColor,
        ),
      ),
    );
  }
}
