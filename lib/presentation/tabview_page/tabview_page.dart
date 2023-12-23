import 'package:flutter/material.dart';
import 'package:volunteerapp/core/app_export.dart';
import 'package:volunteerapp/presentation/detail_screen/detail_screen.dart';

class TabviewPage extends StatefulWidget {
  const TabviewPage({Key? key}) : super(key: key);

  @override
  TabviewPageState createState() => TabviewPageState();
}

class TabviewPageState extends State<TabviewPage>
    with AutomaticKeepAliveClientMixin<TabviewPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildHorizontalScrollTarget(context)
                ]))));
  }

  /// Section Widget
  Widget _buildHorizontalScrollTarget(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 14.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 300.v,
                width: 1100.h,
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            onTapFrame1(context);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 5.v),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildBookmarkStack1(context,
                                        userImage: ImageConstant.imgImage32),
                                    SizedBox(height: 11.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                            width: 232.h,
                                            child: Text(
                                                "Build Tomorrow's Leaders: Volunteer in Education Today!",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    SizedBox(height: 13.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 186.h, child: Divider()),
                                          Container(
                                              height: 2.v,
                                              width: 49.h,
                                              margin:
                                                  EdgeInsets.only(left: 9.h),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h)))
                                        ]),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 244.h,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              _buildTarget(context,
                                                  targetText: "Target:",
                                                  priceText: "99.4646 (80%)")
                                            ])),
                                    SizedBox(height: 11.v)
                                  ])),
                        )),
                    SizedBox(width: 16.h),
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            onTapFrame1(context);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 5.v),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildBookmarkStack1(context,
                                        userImage: ImageConstant.imgImage32),
                                    SizedBox(height: 11.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                            width: 232.h,
                                            child: Text(
                                                "Build Tomorrow's Leaders: Volunteer in Education Today!",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    SizedBox(height: 13.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 186.h, child: Divider()),
                                          Container(
                                              height: 2.v,
                                              width: 49.h,
                                              margin:
                                                  EdgeInsets.only(left: 9.h),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h)))
                                        ]),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 244.h,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              _buildTarget(context,
                                                  targetText: "Target:",
                                                  priceText: "99.4646 (80%)")
                                            ])),
                                    SizedBox(height: 11.v)
                                  ])),
                        )),
                    SizedBox(width: 16.h),
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            onTapFrame1(context);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 5.v),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildBookmarkStack1(context,
                                        userImage: ImageConstant.imgImage32),
                                    SizedBox(height: 11.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                            width: 232.h,
                                            child: Text(
                                                "Build Tomorrow's Leaders: Volunteer in Education Today!",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    SizedBox(height: 13.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 186.h, child: Divider()),
                                          Container(
                                              height: 2.v,
                                              width: 49.h,
                                              margin:
                                                  EdgeInsets.only(left: 9.h),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h)))
                                        ]),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 244.h,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              _buildTarget(context,
                                                  targetText: "Target:",
                                                  priceText: "99.4646 (80%)")
                                            ])),
                                    SizedBox(height: 11.v)
                                  ])),
                        )),
                    SizedBox(width: 16.h),
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            onTapFrame1(context);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 5.v),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildBookmarkStack1(context,
                                        userImage: ImageConstant.imgImage32),
                                    SizedBox(height: 11.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                            width: 232.h,
                                            child: Text(
                                                "Build Tomorrow's Leaders: Volunteer in Education Today!",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    SizedBox(height: 13.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 186.h, child: Divider()),
                                          Container(
                                              height: 2.v,
                                              width: 49.h,
                                              margin:
                                                  EdgeInsets.only(left: 9.h),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h)))
                                        ]),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        width: 244.h,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              _buildTarget(context,
                                                  targetText: "Target:",
                                                  priceText: "99.4646 (80%)")
                                            ])),
                                    SizedBox(height: 11.v)
                                  ])),
                        )),
                  ],
                ))));
  }

  /// Common widget
  Widget _buildTarget(
    BuildContext context, {
    required String targetText,
    required String priceText,
  }) {
    return SizedBox(
        width: 244.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(targetText,
              style: CustomTextStyles.labelLargeGray400Bold_1
                  .copyWith(color: appTheme.gray400)),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "99.4646 ", style: CustomTextStyles.labelLargeBold_1),
                TextSpan(
                    text: "(80%)",
                    style: CustomTextStyles.labelLargeGray400Bold)
              ]),
              textAlign: TextAlign.left)
        ]));
  }

  /// Common widget
  Widget _buildBookmarkStack1(
    BuildContext context, {
    required String userImage,
  }) {
    return SizedBox(
        height: 186.v,
        width: 244.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: userImage,
              height: 186.v,
              width: 244.h,
              radius: BorderRadius.circular(8.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 34.v,
                  width: 28.h,
                  margin: EdgeInsets.only(right: 8.h, bottom: 8.v),
                  padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v),
                  decoration: AppDecoration.fillOnPrimary1,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgBookmark,
                      height: 22.v,
                      width: 14.h,
                      alignment: Alignment.center)))
        ]));
  }

  /// Common widget
  Widget _buildBookmarkStack2(
    BuildContext context, {
    required String userImage,
    required String targetText,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 186.v,
              width: 244.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: userImage,
                    height: 186.v,
                    width: 244.h,
                    radius: BorderRadius.circular(8.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 34.v,
                        width: 28.h,
                        margin: EdgeInsets.only(right: 8.h, bottom: 8.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.h, vertical: 6.v),
                        decoration: AppDecoration.fillOnPrimary1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgBookmark,
                            height: 22.v,
                            width: 14.h,
                            alignment: Alignment.center)))
              ])),
          SizedBox(height: 76.v),
          Text(targetText,
              style: CustomTextStyles.labelLargeGray400Bold_1
                  .copyWith(color: appTheme.gray400))
        ]);
  }

  /// Navigates to the detailScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailScreen);
  }

  /// Navigates to the detailScreen when the action is triggered.
  onTapFrame1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              DetailScreen()), // Replace 'NextPage' with your actual widget
    );
  }

  /// Navigates to the detailScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailScreen);
  }
}
