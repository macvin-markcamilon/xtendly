import '/components/category_card_widget.dart';
import '/components/collection_widget.dart';
import '/components/footer_information_widget.dart';
import '/components/menu_bar_widget.dart';
import '/components/sale_bar_widget.dart';
import '/components/sale_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFBCBBBB),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/Logo_Etc._(17).png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Home',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
            ListTile(
              title: Text(
                'New Arrival',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
            ListTile(
              title: Text(
                'Shop',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
            ListTile(
              title: Text(
                'Last Collection',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
            ListTile(
              title: Text(
                'Men',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
            ListTile(
              title: Text(
                'Women',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
        automaticallyImplyLeading: true,
        title: Image.asset(
          'assets/images/Logo_Etc._(17).png',
          width: 100.0,
          height: 50.0,
          fit: BoxFit.contain,
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.star_border,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
          ),
        ],
        centerTitle: true,
        elevation: 4.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 600.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFE6E6E6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/xtendly-m6j9dd/assets/jr2i5d2kt1ta/bgimage.png',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        Expanded(
                          child: wrapWithModel(
                            model: _model.menuBarModel,
                            updateCallback: () => setState(() {}),
                            child: MenuBarWidget(
                              logo:
                                  'https://i.pinimg.com/originals/c1/92/9d/c1929d3492c2f64ab65b43808c072043.jpg',
                            ),
                          ),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Container(
                              height: 500.0,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.69, -0.16),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/1293292206/photo/young-beautiful-girl-in-a-white-hoodie-posing-warm-oversized-hoodie-with-an-hood-stylish.jpg?s=612x612&w=0&k=20&c=jtOCQCQieltbA-xg3GE_MNdfNsnj4i0H1qvVD837xLk=',
                                      width: 300.0,
                                      height: 350.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(0.58, -0.61),
                                    child: Image.network(
                                      'https://images.vexels.com/content/281968/preview/t-shirts-on-hanger-and-clothes-rack-mockup-aff73a.png',
                                      width: 500.0,
                                      height: 350.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.22, 0.66),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/108201989/photo/young-man-folding-arms-wearing-hood-black-and-white.jpg?s=170667a&w=0&k=20&c=J3Hvm1u-GEQ8Ca7Jvizx8BueuM7tIa1WvsLruA4akHU=',
                                      width: 300.0,
                                      height: 350.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.76),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Shop Now',
                                      options: FFButtonOptions(
                                        width: 300.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                        elevation: 8.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Container(
                              height: 500.0,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.02, 0.55),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/1293292206/photo/young-beautiful-girl-in-a-white-hoodie-posing-warm-oversized-hoodie-with-an-hood-stylish.jpg?s=612x612&w=0&k=20&c=jtOCQCQieltbA-xg3GE_MNdfNsnj4i0H1qvVD837xLk=',
                                      width: 150.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.09, -0.77),
                                    child: Image.network(
                                      'https://images.vexels.com/content/281968/preview/t-shirts-on-hanger-and-clothes-rack-mockup-aff73a.png',
                                      width: 200.0,
                                      height: 350.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.99, 1.55),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/108201989/photo/young-man-folding-arms-wearing-hood-black-and-white.jpg?s=170667a&w=0&k=20&c=J3Hvm1u-GEQ8Ca7Jvizx8BueuM7tIa1WvsLruA4akHU=',
                                      width: 200.0,
                                      height: 350.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.03, 0.8),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Shop Now',
                                      options: FFButtonOptions(
                                        width: 300.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                        elevation: 8.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                        ))
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.categoryCardModel1,
                                updateCallback: () => setState(() {}),
                                child: CategoryCardWidget(
                                  image:
                                      'https://cdn.media.amplience.net/i/rb/WCC22HT025FR26-020-A/Vintage-Terry-Sweatshirt-020?\$medium\$&fmt=auto',
                                  categoryName: 'Sweatshirts',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryCardModel2,
                                updateCallback: () => setState(() {}),
                                child: CategoryCardWidget(
                                  image:
                                      'https://cdn.shopify.com/s/files/1/0618/1040/9717/files/PLP_Mob_HoodiesSweaters_M_570c8e1e-a2bb-46b3-be7d-7240a18e7515_1200x.jpg?v=1676479181',
                                  categoryName: 'Hoodies',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryCardModel3,
                                updateCallback: () => setState(() {}),
                                child: CategoryCardWidget(
                                  image:
                                      'https://ph-test-11.slatic.net/p/7de69275a49b972f301574a2cd2dc3cb.jpg',
                                  categoryName: 'Pair',
                                ),
                              ),
                            ],
                          ),
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.categoryCardModel4,
                                updateCallback: () => setState(() {}),
                                child: CategoryCardWidget(
                                  image:
                                      'https://cdn.media.amplience.net/i/rb/WCC22HT025FR26-020-A/Vintage-Terry-Sweatshirt-020?\$medium\$&fmt=auto',
                                  categoryName: 'Sweatshirts',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryCardModel5,
                                updateCallback: () => setState(() {}),
                                child: CategoryCardWidget(
                                  image:
                                      'https://cdn.shopify.com/s/files/1/0618/1040/9717/files/PLP_Mob_HoodiesSweaters_M_570c8e1e-a2bb-46b3-be7d-7240a18e7515_1200x.jpg?v=1676479181',
                                  categoryName: 'Hoodies',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.categoryCardModel6,
                                updateCallback: () => setState(() {}),
                                child: CategoryCardWidget(
                                  image:
                                      'https://ph-test-11.slatic.net/p/7de69275a49b972f301574a2cd2dc3cb.jpg',
                                  categoryName: 'Pair',
                                ),
                              ),
                            ],
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 32.0, 32.0, 32.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.saleBarModel,
                        updateCallback: () => setState(() {}),
                        child: SaleBarWidget(),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 32.0, 32.0, 32.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.saleCardModel1,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://dynamic.zacdn.com/TxFtJFFPu2wGoXNLJefOONp7sRs=/fit-in/346x500/filters:quality(95):fill(ffffff)/https://static-ph.zacdn.com/p/mrl-prints-2278-3582352-1.jpg',
                                  name: 'I Love Her',
                                  percentOff: '15% OFF',
                                  price: 1500.0,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.saleCardModel2,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://www.pngitem.com/pimgs/m/472-4721628_transparent-matching-clothes-clipart-beautiful-couple-t-shirts.png',
                                  price: 2500.0,
                                  name: 'Hoodie',
                                  percentOff: '10% OFF',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.saleCardModel3,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://images.squarespace-cdn.com/content/v1/51c322cfe4b032aad705a0fc/1642096058730-OUF4I23B7LTCE10UM7QX/G185B_Charcoal_FF.png?format=1000w',
                                  price: 2500.0,
                                  name: 'Hoodie',
                                  percentOff: '10% OFF',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.saleCardModel4,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://i.pinimg.com/originals/e9/44/d4/e944d48a7fce8dac81d14d9c7cba4a27.png',
                                  price: 300.0,
                                  name: 'Nike Hoodie',
                                  percentOff: '10% OFF',
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 32.0, 32.0, 32.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.saleCardModel5,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://dynamic.zacdn.com/TxFtJFFPu2wGoXNLJefOONp7sRs=/fit-in/346x500/filters:quality(95):fill(ffffff)/https://static-ph.zacdn.com/p/mrl-prints-2278-3582352-1.jpg',
                                  name: 'I Love Her',
                                  percentOff: '15% OFF',
                                  price: 1500.0,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.saleCardModel6,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://www.pngitem.com/pimgs/m/472-4721628_transparent-matching-clothes-clipart-beautiful-couple-t-shirts.png',
                                  price: 2500.0,
                                  name: 'Hoodie',
                                  percentOff: '10% OFF',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.saleCardModel7,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://images.squarespace-cdn.com/content/v1/51c322cfe4b032aad705a0fc/1642096058730-OUF4I23B7LTCE10UM7QX/G185B_Charcoal_FF.png?format=1000w',
                                  price: 2500.0,
                                  name: 'Hoodie',
                                  percentOff: '10% OFF',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.saleCardModel8,
                                updateCallback: () => setState(() {}),
                                child: SaleCardWidget(
                                  image:
                                      'https://i.pinimg.com/originals/e9/44/d4/e944d48a7fce8dac81d14d9c7cba4a27.png',
                                  price: 300.0,
                                  name: 'Nike Hoodie',
                                  percentOff: '10% OFF',
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'More',
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFCECDCD),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.footerInformationModel,
                                  updateCallback: () => setState(() {}),
                                  child: FooterInformationWidget(
                                    logoImage:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/xtendly-m6j9dd/assets/s2zzujt6oyp7/Logo_Etc._(17).png',
                                    address:
                                        '147 Tailwater Drive\nSheboygan, WI 53081',
                                    contactNumber: '+1 123 456789',
                                    email: 'info@onlineshop.com',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.collectionModel1,
                                          updateCallback: () => setState(() {}),
                                          child: CollectionWidget(
                                            title: 'COLLECTION',
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.collectionModel2,
                                          updateCallback: () => setState(() {}),
                                          child: CollectionWidget(
                                            title: 'INFORMATION',
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.collectionModel3,
                                          updateCallback: () => setState(() {}),
                                          child: CollectionWidget(
                                            title: 'MORE',
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
