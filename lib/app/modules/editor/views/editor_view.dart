import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';

import '../controllers/editor_controller.dart';

class EditorView extends GetView<EditorController> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    print(themeData.canvasColor.red);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton.icon(
            onPressed: controller.onTapSave,
            icon: Icon(Icons.save),
            label: Text('save'.toUpperCase()),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: HtmlEditor(
                controller: controller.htmlEditorController,
                htmlEditorOptions: HtmlEditorOptions(
                  inputType: HtmlInputType.text,
                  autoAdjustHeight: false,
                ),
                htmlToolbarOptions: HtmlToolbarOptions(
                  buttonColor: themeData.colorScheme.primary,
                  toolbarType: ToolbarType.nativeGrid,
                  defaultToolbarButtons: [
                    StyleButtons(),
                    FontSettingButtons(
                      fontSize: false,
                      fontSizeUnit: false,
                    ),
                    FontButtons(
                      strikethrough: false,
                      subscript: false,
                      superscript: false,
                    ),
                    ListButtons(
                      listStyles: false,
                    ),
                    ParagraphButtons(
                      textDirection: false,
                      lineHeight: false,
                      caseConverter: false,
                      decreaseIndent: false,
                      increaseIndent: false,
                    ),
                    InsertButtons(
                      audio: false,
                      table: false,
                      hr: false,
                      otherFile: false,
                    ),
                    OtherButtons(
                      fullscreen: false,
                      copy: false,
                      help: false,
                      paste: false,
                      redo: false,
                      undo: false,
                    ),
                  ],
                ),
                otherOptions: OtherOptions(
                  height: size.height,
                ),
                callbacks: Callbacks(
                    onInit: () async => controller.setEditorBgColor(themeData.canvasColor),
                    onFocus: () {
                      controller.htmlEditorController.execCommand('fontName', argument: "Billabong");
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
