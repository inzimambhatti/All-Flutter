import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/emojipicker_controller.dart';

class EmojipickerView extends GetView<EmojipickerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emoji Picker'),
        centerTitle: true,
      ),
      body: WillPopScope(
        child: Column(
          children: [
            Expanded(
                child: Container()
            ),
            Container(
              height: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.isEmojiVisible.value =
                      !controller.isEmojiVisible.value;
                      controller.focusNode.unfocus();
                      controller.focusNode.canRequestFocus = true;
                    },
                    icon: Icon(
                      Icons.emoji_emotions,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: TextField(
                          focusNode: controller.focusNode,
                          controller: controller.textEditingController,
                          decoration: InputDecoration(
                            hintText: 'Type a message',
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(
                                left: 16.0, bottom: 8.0, top: 8.0, right: 16.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Obx(() => Offstage(
              offstage: !controller.isEmojiVisible.value,
              child: SizedBox(
                height: 250,
                child: EmojiPicker(
                  onEmojiSelected: (category, emoji) {
                    controller.textEditingController.text =
                        controller.textEditingController.text + emoji.emoji;
                  },
                  onBackspacePressed: () {},
                  config: Config(
                      columns: 7,
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      initCategory: Category.SMILEYS,
                      bgColor: Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      progressIndicatorColor: Colors.blue,
                      showRecentsTab: true,
                      recentsLimit: 28,
                      noRecentsText: "No Recents",
                      noRecentsStyle: const TextStyle(
                          fontSize: 20, color: Colors.black26),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.MATERIAL),
                ),
              ),
            ))
          ],
        ),
        onWillPop: () {
          if (controller.isEmojiVisible.value) {
            controller.isEmojiVisible.value = false;
          } else {
            Navigator.pop(context);
          }
          return Future.value(false);
        },
      ),
    );
  }
}
