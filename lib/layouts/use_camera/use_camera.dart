import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lung/components/components.dart';

class UseCamera extends StatefulWidget {
  const UseCamera({Key? key}) : super(key: key);

  @override
  State<UseCamera> createState() => _UseCameraState();
}

class _UseCameraState extends State<UseCamera> {
  File? takePhoto;
  File? uploadPhoto;
  var picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lung Cancer Detection',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 20,),
            Image.asset('assets/images/lung.png'),
            const SizedBox(height: 30,),
            defaultCameraButton(
              isUpperCase: false,
              width: 250,
              text: 'Upload a Photo',
              onPressed: () async{
                final pickedImage = await picker.pickImage(source: ImageSource.gallery);
                if(pickedImage !=null)
                {
                  setState(() {
                    uploadPhoto = File(pickedImage.path);
                  });
                }
              }
            ),
            const SizedBox(height: 20,),
            defaultCameraButton(
              isUpperCase: false,
                width: 250,
                text: 'Take a Photo',
                onPressed: () async{
                  final pickedImage = await picker.pickImage(source: ImageSource.camera);
                  if(pickedImage !=null)
                  {
                    setState(() {
                      takePhoto = File(pickedImage.path);
                    });
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}

