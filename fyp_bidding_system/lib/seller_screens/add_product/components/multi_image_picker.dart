
import 'package:fyp_bidding_system/size_config.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';


class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);
  static String routeName="/add_product";

  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {



  List<Asset> images = <Asset>[];
  String _error = 'No Error Dectected';

  @override


  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 100,
          height: 100,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 10,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: const CupertinoOptions(
          takePhotoIcon: "chat",
          doneButtonTitle: "Fatto",
        ),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }
  @override
  Widget build(BuildContext context) {
    var asset;
    return  Column(

      children: [
        Center(child: Text('Error: $_error')),
        Container(
          width: getProportionateScreenWidth(SizeConfig.screenWidth),
          height: getProportionateScreenWidth(60),
          margin: EdgeInsets.only(bottom: 40),

          child:   Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: Text("Pick images"),
              onPressed: loadAssets,

            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 200,
          child: buildGridView(),
        ),
      ],
    );

  }
}
