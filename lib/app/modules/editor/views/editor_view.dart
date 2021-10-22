import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:get/get.dart';

import '../controllers/editor_controller.dart';

class EditorView extends GetView<EditorController> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
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
      body: Column(
        children: [
          quill.QuillToolbar.basic(
            controller: controller.quillController,
            showHistory: false,
            iconTheme: quill.QuillIconTheme(
              iconUnselectedColor: themeData.colorScheme.primary,
              iconSelectedFillColor: themeData.colorScheme.secondary,
            ),
          ),
          Expanded(
            child: Container(
              child: quill.QuillEditor.basic(
                controller: controller.quillController,
                readOnly: false, // true for view only mode
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () => Text(
                controller.text.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
