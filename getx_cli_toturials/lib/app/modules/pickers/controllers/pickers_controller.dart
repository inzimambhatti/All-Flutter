import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickersController extends GetxController {
  //TODO: Implement PickersController
  var dateRange=DateTimeRange(
    start: DateTime.now(),
    end: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+6,)
  ).obs;
  var selectedTime = TimeOfDay.now().obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  chooseDateRangePicker() async{
    DateTimeRange?picked=await showDateRangePicker(
        context: Get.context!,
        firstDate: DateTime(DateTime.now().year-20),
        lastDate: DateTime(DateTime.now().year+20)
        initialDateRange: dateRange.value
    );
    if (picked!=null && picked!=dateRange.value){
      dateRange.value=picked;
    }

  }
  chooseTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
        context: Get.context!,
        initialTime: selectedTime.value,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        },
        initialEntryMode: TimePickerEntryMode.input,
        helpText: 'Select Departure Time',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorInvalidText: 'Provide valid time',
        hourLabelText: 'Select Hour',
        minuteLabelText: 'Select Minute');
    if (pickedTime != null && pickedTime != selectedTime.value) {
      selectedTime.value = pickedTime;
    }
  }
}
