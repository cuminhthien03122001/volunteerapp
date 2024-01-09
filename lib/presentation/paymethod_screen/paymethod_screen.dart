import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:volunteerapp/core/app_export.dart';
import 'package:volunteerapp/core/models/volunteerActivity.dart';
import 'package:volunteerapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:volunteerapp/widgets/app_bar/appbar_title.dart';
import 'package:volunteerapp/widgets/app_bar/custom_app_bar.dart';
import 'package:volunteerapp/widgets/custom_elevated_button.dart';
import 'package:volunteerapp/widgets/custom_radio_button.dart';

class PaymethodScreen extends StatefulWidget {
  final VolunteerActivity activity;

  PaymethodScreen({Key? key, required this.activity}) : super(key: key);

  @override
  _PaymethodScreenState createState() => _PaymethodScreenState();
}

class _PaymethodScreenState extends State<PaymethodScreen> {
  TextEditingController _controller = TextEditingController();
  String radioGroup = "";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL48,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildAppBar(context),
                        SizedBox(height: 36.v),
                        _buildBuildTomorrowSection(context),
                        SizedBox(height: 40.v),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'Enter the amount',
                            prefixText: '\$ ',
                            hintText: '0.00',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 40.v),
                        _buildPaymentMethodSection(context),
                        SizedBox(height: 32.v),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildDonateButton(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 25.v,
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorBlack900,
        margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 5.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "Donate"),
    );
  }

  Widget _buildBuildTomorrowSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: widget.activity.image,
            height: 76.v,
            width: 120.h,
            radius: BorderRadius.circular(8.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h, bottom: 19.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 232.h,
                  child: Text(
                    widget.activity.name,
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
    );
  }

  Widget _buildPaymentMethodSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle("Payment Method"),
        SizedBox(height: 32.v),
        _buildPaymentOption("Credit Card", ImageConstant.imgImage3328x62),
        _buildPaymentOption("Bank Transfer", ImageConstant.imgImage34),
        _buildPaymentOption("PayPal", ImageConstant.imgImage35),
        _buildCryptocurrencyOption(),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Text(
        title,
        style: CustomTextStyles.titleLargeBlack900,
      ),
    );
  }

  Widget _buildPaymentOption(String label, String imagePath) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.h, right: 5.h),
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
                  padding: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 3.v),
                  child: Text(
                    label,
                    style: CustomTextStyles.titleMediumInterPrimary,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: imagePath,
                  height: 28.v,
                  width: 62.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  Widget _buildCryptocurrencyOption() {
    return Padding(
      padding: EdgeInsets.only(left: 10.h, right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.v),
            child: CustomRadioButton(
              text: "Cryptocurrency",
              value: "Cryptocurrency",
              groupValue: radioGroup,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage36,
            height: 42.adaptSize,
            width: 42.adaptSize,
          ),
        ],
      ),
    );
  }

  Widget _buildDonateButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Donate",
      onPressed: () => launch("metamask:"),
      margin: EdgeInsets.only(
        top: 6.h,
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightGreenTL8,
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
