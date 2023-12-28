import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteerapp/core/app_export.dart';
import 'package:volunteerapp/main.dart';
import 'package:volunteerapp/presentation/editprofile_screen/editprofile_screen.dart';
import 'package:volunteerapp/presentation/login_screen/login_screen.dart';
import 'package:volunteerapp/widgets/custom_bottom_bar.dart';
import 'package:volunteerapp/widgets/custom_elevated_button.dart';
import 'package:volunteerapp/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  final VoidCallback? onLogoutPressed;

  const ProfileScreen({Key? key, this.onLogoutPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
      SizedBox(height: 5.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 48.v),
          decoration: AppDecoration.fillWhiteA
              .copyWith(borderRadius: BorderRadiusStyle.customBorderBL48),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.v),
                _buildProfileSection(context),
                SizedBox(height: 57.v),
                Text("Email address", style: theme.textTheme.titleSmall),
                SizedBox(height: 4.v),
                Text("ht@gmail.com", style: theme.textTheme.titleMedium),
                SizedBox(height: 46.v),
                Text("Account ID", style: theme.textTheme.titleSmall),
                SizedBox(height: 3.v),
                Text("18-9275665999", style: theme.textTheme.titleMedium),
                SizedBox(height: 47.v),
                _buildPaymentMethodSection(context),
                SizedBox(height: 95.v),
                _buildFortyNineSection(context),
                SizedBox(height: 43.v),
                CustomElevatedButton(
                    text: "Logout",
                    onPressed: () {
                      _removeToken();
                      // Sử dụng Provider để cập nhật trạng thái
                      onLogoutPressed?.call();
                    },
                    buttonTextStyle: CustomTextStyles.titleMediumWhiteA700)
              ]))
    ]))));
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Profile", style: theme.textTheme.headlineSmall),
      SizedBox(height: 27.v),
      Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle25,
                height: 76.adaptSize,
                width: 76.adaptSize,
                radius: BorderRadius.circular(8.h)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 18.v, bottom: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Chiro Morganisa",
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 6.v),
                      Text("+84 941979240", style: theme.textTheme.titleSmall)
                    ])),
            Spacer(),
            CustomIconButton(
                height: 16.adaptSize,
                width: 16.adaptSize,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditprofileScreen()), // Replace 'NextPage' with your actual widget
                  );
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                ))
          ]))
    ]);
  }

  Future<void> _removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token'); // Remove the token from shared preferences
  }

  /// Section Widget
  Widget _buildPaymentMethodSection(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 6.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Payment Method", style: theme.textTheme.titleSmall),
            SizedBox(height: 8.v),
            SizedBox(
                width: 167.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage3328x62,
                          height: 28.v,
                          width: 62.h),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage35,
                          height: 22.v,
                          width: 84.h,
                          margin: EdgeInsets.only(bottom: 4.v))
                    ]))
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgImage36,
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(left: 21.h, top: 20.v)),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(bottom: 18.v),
          child: CustomIconButton(
              height: 16.adaptSize,
              width: 16.adaptSize,
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight)))
    ]);
  }

  /// Section Widget
  Widget _buildFortyNineSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Version", style: theme.textTheme.titleSmall),
      SizedBox(height: 3.v),
      Text("1.01.2", style: theme.textTheme.titleMedium)
    ]);
  }

  /// Navigates to the editprofileScreen when the action is triggered.
  onTapBtnArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editprofileScreen);
  }
}
