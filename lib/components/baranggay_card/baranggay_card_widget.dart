import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'baranggay_card_model.dart';
export 'baranggay_card_model.dart';

class BaranggayCardWidget extends StatefulWidget {
  const BaranggayCardWidget({
    super.key,
    String? brgImage,
    String? brgyName,
    String? brgyDescription,
  })  : this.brgImage = brgImage ??
            'https://scontent.fmnl17-7.fna.fbcdn.net/v/t39.30808-6/476642384_1185011206320862_7080630953913790255_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=833d8c&_nc_ohc=TSQ4Oob-yuAQ7kNvgGCkQ7s&_nc_oc=AdhOleV9Yvwwes5DeXh1OwC2VZ7U_HvRdm4swz_mKzaK8GJVF4DOihSlSCM1VSRZxas&_nc_zt=23&_nc_ht=scontent.fmnl17-7.fna&_nc_gid=Ac2_xlbmu5oTummermavwwE&oh=00_AYAeQkssbW6o0yUKLJG552de8a3pt6HAHi6YMyUrY17BAg&oe=67B42FF7',
        this.brgyName = brgyName ?? 'Hakdog',
        this.brgyDescription = brgyDescription ?? 'Tite';

  final String brgImage;
  final String brgyName;
  final String brgyDescription;

  @override
  State<BaranggayCardWidget> createState() => _BaranggayCardWidgetState();
}

class _BaranggayCardWidgetState extends State<BaranggayCardWidget> {
  late BaranggayCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BaranggayCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            alignment: AlignmentDirectional(-1.0, 0.0),
          ),
          Opacity(
            opacity: 0.45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                valueOrDefault<String>(
                  widget.brgImage,
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/polangui-folktales-u7cgc3/assets/2pqpixzj429m/image.png',
                ),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  'assets/images/error_image.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Barangay',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.brgyName,
                        'Barangay',
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Antic Didone',
                            fontSize: 40.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            lineHeight: 0.0,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.brgyDescription,
                        'Description',
                      ),
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
