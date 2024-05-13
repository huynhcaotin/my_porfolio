import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_porfolio/globals/app_assets.dart';
import 'package:my_porfolio/globals/app_buttons.dart';
import 'package:my_porfolio/globals/app_colors.dart';
import 'package:my_porfolio/globals/app_text_styles.dart';
import 'package:my_porfolio/globals/constants.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false;
  bool isGraphic = false;
  bool isAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0,-10,0);
  final onHoverRemove = Matrix4.identity()..translate(0,0,0);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                  text: 'My',
                  style: AppTextStyles.headingStyle(fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'Services',
                      style: AppTextStyles.headingStyle(
                          fontSize: 30, color: AppColors.robinEdgeBlue),
                    )
                  ]),
            ),
          ),

          Constants.sizebox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(title: "App development", asset: AppAssets.code, isHover: isApp)),
              Constants.sizebox(width: 18),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isGraphic = value;
                    });
                  },
                  child: buildAnimatedContainer(
                      title: "Grapic design",
                      asset: AppAssets.brush,
                      isHover: isGraphic)),
              Constants.sizebox(width: 18),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isAnalyst = value;
                    });
                  },
                  child: buildAnimatedContainer(
                      title: "Digital Maketting",
                      asset: AppAssets.analytics,
                      isHover: isAnalyst)),
            ],
          ),

        ]
        ,
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({required String title, required String asset ,required bool isHover}) {
    return AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          width: isHover ? 400 : 390,
          height: isHover ? 450 : 440,
          transform: isHover ? onHoverActive: onHoverRemove,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.bgColor2,
            border: isHover ? Border.all(color: AppColors.themeColor, width: 3) : null,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 4.5,
                spreadRadius: 4.0,
                offset: Offset(3, 4.5),
              )
            ],
          ),
          child: Column(children: [
            Image.asset(
              asset,
              color: AppColors.themeColor,
              height: 50,
              width: 50,
            ),
            Constants.sizebox(height: 30),
            Text(
              title,
              style: AppTextStyles.montserratStyle(color: Colors.white),
            ),
            Constants.sizebox(height: 12),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has",
                // textAlign: TextAlign.center,
                style: AppTextStyles.normalTexStyle()),
            Constants.sizebox(height: 20),
            AppButtons.buildMaterialButton(
              buttonName: 'Read More',
              onTap: () {},
            )
          ]
        ),);
  }
}