import '/components/category_card_widget.dart';
import '/components/collection_widget.dart';
import '/components/footer_information_widget.dart';
import '/components/menu_bar_mobile_widget.dart';
import '/components/menu_bar_widget.dart';
import '/components/sale_bar_widget.dart';
import '/components/sale_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for MenuBar component.
  late MenuBarModel menuBarModel;
  // Model for MenuBarMobile component.
  late MenuBarMobileModel menuBarMobileModel;
  // Model for CategoryCard component.
  late CategoryCardModel categoryCardModel1;
  // Model for CategoryCard component.
  late CategoryCardModel categoryCardModel2;
  // Model for CategoryCard component.
  late CategoryCardModel categoryCardModel3;
  // Model for CategoryCard component.
  late CategoryCardModel categoryCardModel4;
  // Model for CategoryCard component.
  late CategoryCardModel categoryCardModel5;
  // Model for CategoryCard component.
  late CategoryCardModel categoryCardModel6;
  // Model for SaleBar component.
  late SaleBarModel saleBarModel;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel1;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel2;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel3;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel4;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel5;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel6;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel7;
  // Model for SaleCard component.
  late SaleCardModel saleCardModel8;
  // Model for FooterInformation component.
  late FooterInformationModel footerInformationModel;
  // Model for Collection component.
  late CollectionModel collectionModel1;
  // Model for Collection component.
  late CollectionModel collectionModel2;
  // Model for Collection component.
  late CollectionModel collectionModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuBarModel = createModel(context, () => MenuBarModel());
    menuBarMobileModel = createModel(context, () => MenuBarMobileModel());
    categoryCardModel1 = createModel(context, () => CategoryCardModel());
    categoryCardModel2 = createModel(context, () => CategoryCardModel());
    categoryCardModel3 = createModel(context, () => CategoryCardModel());
    categoryCardModel4 = createModel(context, () => CategoryCardModel());
    categoryCardModel5 = createModel(context, () => CategoryCardModel());
    categoryCardModel6 = createModel(context, () => CategoryCardModel());
    saleBarModel = createModel(context, () => SaleBarModel());
    saleCardModel1 = createModel(context, () => SaleCardModel());
    saleCardModel2 = createModel(context, () => SaleCardModel());
    saleCardModel3 = createModel(context, () => SaleCardModel());
    saleCardModel4 = createModel(context, () => SaleCardModel());
    saleCardModel5 = createModel(context, () => SaleCardModel());
    saleCardModel6 = createModel(context, () => SaleCardModel());
    saleCardModel7 = createModel(context, () => SaleCardModel());
    saleCardModel8 = createModel(context, () => SaleCardModel());
    footerInformationModel =
        createModel(context, () => FooterInformationModel());
    collectionModel1 = createModel(context, () => CollectionModel());
    collectionModel2 = createModel(context, () => CollectionModel());
    collectionModel3 = createModel(context, () => CollectionModel());
  }

  void dispose() {
    menuBarModel.dispose();
    menuBarMobileModel.dispose();
    categoryCardModel1.dispose();
    categoryCardModel2.dispose();
    categoryCardModel3.dispose();
    categoryCardModel4.dispose();
    categoryCardModel5.dispose();
    categoryCardModel6.dispose();
    saleBarModel.dispose();
    saleCardModel1.dispose();
    saleCardModel2.dispose();
    saleCardModel3.dispose();
    saleCardModel4.dispose();
    saleCardModel5.dispose();
    saleCardModel6.dispose();
    saleCardModel7.dispose();
    saleCardModel8.dispose();
    footerInformationModel.dispose();
    collectionModel1.dispose();
    collectionModel2.dispose();
    collectionModel3.dispose();
  }

  /// Additional helper methods are added here.

}
