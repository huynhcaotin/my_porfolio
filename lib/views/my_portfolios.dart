import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_porfolio/globals/app_assets.dart';
import 'package:my_porfolio/globals/app_colors.dart';
import 'package:my_porfolio/globals/app_text_styles.dart';
import 'package:my_porfolio/globals/constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});
  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onHoverIndex = Matrix4.identity()..scale(1.0);

  var images =  [
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];
  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width*0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                  text: 'Lates',
                  style: AppTextStyles.headingStyle(fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'Project',
                      style: AppTextStyles.headingStyle(
                          fontSize: 30, color: AppColors.robinEdgeBlue),
                    )
                  ]),
            ),
          ),
          Constants.sizebox(height: 40),
          GridView.builder(
             itemCount: images.length,
             shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 280,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
            itemBuilder: (context, index) {
              return FadeOutUpBig(
                duration: const Duration(microseconds:  1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoveredIndex = index;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          transform: index == hoveredIndex ? onHoverIndex : null,
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.themeColor.withOpacity(1.0),
                                AppColors.themeColor.withOpacity(0.9),
                                AppColors.themeColor.withOpacity(0.8),
                                AppColors.themeColor.withOpacity(0.6),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter
                                          
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "App Development",
                                style: AppTextStyles.montserratStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                              Constants.sizebox(height: 15),
                                Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                style: AppTextStyles.normalTexStyle(
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ]
        ,
      ),
    );
  }

}