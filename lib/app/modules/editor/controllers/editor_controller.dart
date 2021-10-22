import 'dart:convert';
import 'dart:developer';

import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';

class EditorController extends GetxController {
  QuillController quillController = QuillController.basic();

  RxString text = RxString('');

  @override
  void onReady() {
    quillController.addListener(() {
      text.value = quillController.document.toPlainText();
    });
    super.onReady();
  }

  Future<void> onTapSave() async {
    String json = jsonEncode(quillController.document.toDelta().toJson());
    log(json);
  }
}
