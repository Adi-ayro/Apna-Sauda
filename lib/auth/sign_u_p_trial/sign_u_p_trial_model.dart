import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUPTrialModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for LoginEmail widget.
  TextEditingController? loginEmailController;
  String? Function(BuildContext, String?)? loginEmailControllerValidator;
  String? _loginEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Pls Enter a valid mail Id';
    }
    return null;
  }

  // State field(s) for LoginPassword widget.
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;
  String? _loginPasswordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Nickname widget.
  TextEditingController? nicknameController;
  String? Function(BuildContext, String?)? nicknameControllerValidator;
  String? _nicknameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PhoneNo widget.
  TextEditingController? phoneNoController;
  String? Function(BuildContext, String?)? phoneNoControllerValidator;
  String? _phoneNoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginEmailControllerValidator = _loginEmailControllerValidator;
    loginPasswordVisibility = false;
    loginPasswordControllerValidator = _loginPasswordControllerValidator;
    nameControllerValidator = _nameControllerValidator;
    nicknameControllerValidator = _nicknameControllerValidator;
    phoneNoControllerValidator = _phoneNoControllerValidator;
  }

  void dispose() {
    loginEmailController?.dispose();
    loginPasswordController?.dispose();
    nameController?.dispose();
    nicknameController?.dispose();
    phoneNoController?.dispose();
  }

  /// Additional helper methods are added here.

}
