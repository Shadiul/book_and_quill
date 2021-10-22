import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class EditorController extends GetxController {
  HtmlEditorController htmlEditorController = HtmlEditorController();
  Future<void> setEditorBgColor(Color color) async {
    htmlEditorController.execCommand('fontName', argument: 'Consolas');
    await htmlEditorController.editorController!.evaluateJavascript(
      source:
          "document.getElementsByClassName('note-editable')[0].style.backgroundColor='rgb(${color.red}, ${color.green}, ${color.blue})';",
    );
  }

  RxString text = RxString('');

  Future<void> onTapSave() async {}
}
