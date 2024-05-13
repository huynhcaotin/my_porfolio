import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_porfolio/globals/app_assets.dart';
import 'package:my_porfolio/globals/app_buttons.dart';
import 'package:my_porfolio/globals/app_colors.dart';
import 'package:my_porfolio/globals/app_text_styles.dart';
import 'package:my_porfolio/globals/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.bgColor2,
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInRight(
              duration: const Duration(milliseconds: 1200),
              child: Image.asset(
                AppAssets.profile2,
                width: 400,
                height: 450,
              )),
          Constants.sizebox(width: 22),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: RichText(
                    text: TextSpan(
                        text: 'About',
                        style: AppTextStyles.headingStyle(fontSize: 30),
                        children: [
                          TextSpan(
                            text: 'Me',
                            style: AppTextStyles.headingStyle(
                                fontSize: 30, color: AppColors.robinEdgeBlue),
                          )
                        ]),
                  ),
                ),
                Constants.sizebox(height: 6),
                FadeInLeft(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      'I\'m a Java developer !!',
                      style: AppTextStyles.montserratStyle(color: Colors.white),
                    )),
                Constants.sizebox(height: 8),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has '
                    'been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley '
                    'of type and scrambled it to make a type specimen book. It has survived not only five centuries, '
                    'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised '
                    'in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently '
                    'with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    style: AppTextStyles.normalTexStyle(),
                  ),
                ),
                Constants.sizebox(height: 6),
                FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: AppButtons.buildMaterialButton(
                      buttonName: 'Read More',
                      onTap: () {},
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
