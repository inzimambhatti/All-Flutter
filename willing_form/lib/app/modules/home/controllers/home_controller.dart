import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:willing_form/constants.dart';
import 'package:willing_form/firebase_services.dart';

class HomeController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var firebaseService = firebaseServices();
  Map<String, dynamic> dataToFireStore = {};
  RxInt currentStep = 0.obs;
  var i = 1;
  var _selectedValue = ''.obs;
  List<DropdownMenuItem<String>> projectItems = [];
  var selectedProjectTitle;
  var spNameController = TextEditingController();
  var spGitController = TextEditingController();
  var s1NameController = TextEditingController();
  var s2NameController = TextEditingController();
  var s1RegController = TextEditingController();
  var s2RegController = TextEditingController();
  var s1GitController = TextEditingController();
  var s2GitController = TextEditingController();

  //TODO: Implement HomeController
//cupertino stepper
  Obx buildStepper(StepperType type) {
    final canCancel = currentStep >= 0;
    final canContinue = currentStep < 3;
    return Obx(() => Form(
          key: formKey,
          child: CupertinoStepper(
            type: type,
            currentStep: currentStep.value,
            onStepTapped: (step) => currentStep.value = step,
            onStepCancel: canCancel ? () => --currentStep.value : null,
            onStepContinue: canContinue
                ? () {
                    if (currentStep.value < 3) ++currentStep.value;
                  }
                : null,
            steps: [
              for (i = 0; i <= 3; ++i)
                buildStep(
                  title: Text('Step ${i + 1}'),
                  isActive: i == currentStep,
                  state: i == currentStep
                      ? StepState.editing
                      : i < currentStep.value
                          ? StepState.complete
                          : StepState.indexed,
                ),
              // buildStep(
              //   title: Text('Error'),
              //   state: StepState.error,
              // ),
            ],
          ),
        ));
  }

////////// build steps
  Step buildStep({
    required Widget title,
    StepState state = StepState.indexed,
    bool isActive = false,
  }) {
    return Step(
        title: title,
        subtitle: i == 0
            ? Text('Project Title')
            : i == 1
                ? Text('Supervisor info.')
                : i == 2
                    ? Text("Student 1 info.")
                    : Text("Student 2 info."),
        state: state,
        isActive: isActive,
        content: currentStep.value == 0
            ? Container(
                width: Get.width,
                height: 100,
                decoration: kBoxDecoration,
                child: Column(
                  children: [
                    Text(
                      'Choose title of your FYP.',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    //dropdownbuttton
                    DropdownButton(
                      hint: Text('Choose Your Project'),
                      value: _selectedValue,
                      items: projectItems,
                      onChanged: (newValue) {
                        _selectedValue.value = newValue.toString();
                      },
                      isExpanded: true,
                    )
                  ],
                ),
              )
            : currentStep.value == 1
                ? Container(
                    width: Get.width,
                    decoration: kBoxDecoration,
                    child: Column(
                      children: [
                        Text(
                          'Supervisor Information.',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildSpNameField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildSpGitField(),
                        ),
                      ],
                    ),
                  )
                : currentStep.value == 2
                    ? Container(
                        width: Get.width,
                        decoration: kBoxDecoration,
                        child: Column(
                          children: [
                            Text(
                              'Student 1 Information',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: buildS1NameField(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: buildS1RegField(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: buildS1GitField(),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        child: Container(
                          width: Get.width,
                          decoration: kBoxDecoration,
                          child: Column(
                            children: [
                              Text(
                                'Student 2 Information',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: buildS2NameField(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: buildS2RegField(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: buildS2GitField(),
                              ),
                            ],
                          ),
                        ),
                      ));
  }

//build supervisor name form filed
  TextFormField buildSpNameField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      //key: formKey,
      controller: spNameController,
      onSaved: (newValue) => spNameController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Name",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Your supervisor name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //sp github filed
  TextFormField buildSpGitField() {
    return TextFormField(
      //key: formKey,
      controller: spGitController,
      onSaved: (newValue) => spGitController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Github",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Enter username",
        helperText: "be accurate 'must incl @'",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //S1 Name filed
  TextFormField buildS1NameField() {
    return TextFormField(
      //key: formKey,
      controller: s1NameController,
      onSaved: (newValue) => s1NameController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Name",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Your name",
        helperText: 'Write ful name as on Student Card',
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //S2 Name filed
  TextFormField buildS2NameField() {
    return TextFormField(
      //key: formKey,
      controller: s2NameController,
      onSaved: (newValue) => s2NameController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Name",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Your name",
        helperText: 'Write ful name as on Student Card',
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //S1 reg filed
  TextFormField buildS1RegField() {
    return TextFormField(
      //key: formKey,
      controller: s1RegController,
      onSaved: (newValue) => s1RegController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Registration",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Your Registration",
        helperText: 'FA-18-BCS-038',
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //S2 REG filed
  TextFormField buildS2RegField() {
    return TextFormField(
      //key: formKey,
      controller: s2RegController,
      onSaved: (newValue) => s2RegController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Registration",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Your registration ",
        helperText: 'FA18-BCS-038',
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //S1 GIT filed
  TextFormField buildS1GitField() {
    return TextFormField(
      //key: formKey,
      controller: s1GitController,
      onSaved: (newValue) => s1GitController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Github",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Enter your username",
        helperText: "be accurate 'must incl @'",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //S2 git  filed
  TextFormField buildS2GitField() {
    return TextFormField(
      //key: formKey,
      controller: s2GitController,
      onSaved: (newValue) => s2GitController.text = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          print(value);
        }
        return null;
      },
      validator: (value) {
        return spNameValidator(value!);
      },
      decoration: const InputDecoration(
        labelText: "Github",
        labelStyle: TextStyle(color: Colors.white),
        hintText: "Your github username",
        helperText: "be accurate 'must incl @'",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //names validator
  String? spNameValidator(String value) {
    if (value.isEmpty) {
      return "Provide Name of Supervisor";
    }
    return null;
  }

  Future<void> addDataToFirestore() {
    return firebaseService.projects
        .doc(firebaseService.firebaseUser?.uid)
        .set(dataToFireStore)
        .then((value) {
      Get.snackbar('Success', "Your fyp has been submitted");
      Get.back();
    }).catchError(
            (error) => Get.snackbar('Error', "Failed to add products: $error"));
  }

  submitRecord() {
    var isValid = formKey.currentState?.validate();
    if (isValid!) {
      dataToFireStore.addAll({
        'projectName': 'Bidding App',
        'status': false,
        'supervisorName': spNameController.text,
        'supervisorGithub': spGitController.text,
        'student1Name': s1NameController.text,
        'student1Registration': s1RegController.text,
        'student1Github': s1GitController.text,
        'student2Name': s2NameController.text,
        'student2Registration': s2RegController.text,
        'student2Github': s2GitController.text,
      });
      //Get.to(UserReviewPageView());
      Get.defaultDialog(
          title: 'Confirmation',
          content: Column(
            children: [
              ListTile(
                // leading: Text(dataToFireStore['supervisorName']),
                // title: Text(dataToFireStore['projectName']),
                subtitle: Text(
                    '${dataToFireStore['student1Name']}:${dataToFireStore['student1Name']}'),
              ),
            ],
          ),
          onConfirm: () {
            addDataToFirestore();
          });
      print(dataToFireStore);
    } else {
      Get.snackbar(
          'Please Folllow all steps', 'Looks like you are missing something',
          backgroundColor: Colors.red);
    }
  }

  ///////////////////////////////////////////////
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
