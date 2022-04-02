import 'package:file_picker/file_picker.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';

import '../../../data/UploadFile.dart';
import '../../../data/downloadFile.dart';

class AdminHomePageController extends GetxController {
  //TODO: Implement AdminHomePageController
  RxBool uploading = RxBool(false);
  RxBool downloading = RxBool(false);
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> shareFile(String path) async {
    await FlutterShare.shareFile(title: "CUI-FYP", filePath: path);
  }

  //upload excel file
  uploadFile() async {
    print("pressed");
    if (uploading.value == false) {
      //setstate
      uploading.value = true;
      print("pressed2");
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['xlsx'],
      );
      print("pressed");
      if (result != null) {
        UploadFile.read(result.files.first.path as String);
      }
      //setstate
      uploading.value = false;
    }
  }

//upload excel file
  downloadFile() async {
    if (downloading.value == false) {
      //setstate
      downloading.value = true;

      String path = await DownloadFile.download();
      await shareFile(path);
      //setstate
      downloading.value = false;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
