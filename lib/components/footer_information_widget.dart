import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'footer_information_model.dart';
export 'footer_information_model.dart';

class FooterInformationWidget extends StatefulWidget {
  const FooterInformationWidget({
    Key? key,
    this.logoImage,
    this.address,
    this.contactNumber,
    this.email,
  }) : super(key: key);

  final String? logoImage;
  final String? address;
  final String? contactNumber;
  final String? email;

  @override
  _FooterInformationWidgetState createState() =>
      _FooterInformationWidgetState();
}

class _FooterInformationWidgetState extends State<FooterInformationWidget> {
  late FooterInformationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterInformationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 8.0),
          child: Image.network(
            widget.logoImage!,
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 8.0),
              child: Icon(
                Icons.pin_drop,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            Text(
              widget.address!,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 8.0),
              child: Icon(
                Icons.phone_android_outlined,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            Text(
              widget.contactNumber!,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 8.0),
              child: Icon(
                Icons.mail_outlined,
                color: Colors.black,
                size: 24.0,
              ),
            ),
            Text(
              widget.email!,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: FaIcon(
                  FontAwesomeIcons.pinterest,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
