import 'package:flutter/material.dart';
import 'package:volunteerapp/core/app_export.dart';
import 'package:volunteerapp/widgets/custom_elevated_button.dart';
import 'package:volunteerapp/widgets/custom_radio_button.dart';

class PaymethodScreen extends StatelessWidget {
  PaymethodScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              SizedBox(height: 20.v),
              CustomImageView(
                height: 12.v,
                margin: EdgeInsets.only(left: 16.h),
              ),
              SizedBox(height: 23.v),
              SizedBox(height: 20.v),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL48,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildBuildTomorrowSection(context),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                        text: "Donate as anonymous",
                        buttonTextStyle:
                            CustomTextStyles.titleMediumOnPrimaryBold_1,
                      ),
                      SizedBox(height: 41.v),
                      _buildPaymentMethodSection(context),
                      Spacer(),
                      _buildTotalSection(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildDonateButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBuildTomorrowSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage32,
              height: 76.v,
              width: 120.h,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                bottom: 19.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 232.h,
                    child: Text(
                      "Build Tomorrow's Leaders: Volunteer in Education Today!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "By: HT Organization",
                    style: CustomTextStyles.labelLargeGray400,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            "Payment Method",
            style: CustomTextStyles.titleLargeBlack900,
          ),
        ),
        SizedBox(height: 44.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 5.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 22.v,
                      width: 20.h,
                      margin: EdgeInsets.symmetric(vertical: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "Credit Card",
                        style: CustomTextStyles.titleMediumInterPrimary,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3328x62,
                      height: 28.v,
                      width: 62.h,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 6.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.v),
                      child: CustomRadioButton(
                        text: " Bank Transfer",
                        value: " Bank Transfer",
                        groupValue: radioGroup,
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        onChange: (value) {
                          radioGroup = value;
                        },
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage34,
                      height: 58.v,
                      width: 78.h,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 22.v,
                      width: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "PayPal",
                        style: CustomTextStyles.titleMediumInterPrimary,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage35,
                      height: 22.v,
                      width: 84.h,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 22.v,
                      width: 20.h,
                      margin: EdgeInsets.symmetric(vertical: 10.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 12.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "Cryptocurrency",
                        style: CustomTextStyles.titleMediumInterPrimary,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage36,
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTotalSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 4.v,
          ),
          child: Text(
            "Total",
            style: CustomTextStyles.titleMediumGray500,
          ),
        ),
        Text(
          "25.25",
          style: theme.textTheme.headlineSmall,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDonateButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Donate",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 11.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightGreenTL8,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
    );
  }
}
