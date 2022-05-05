import 'package:flutter/material.dart';
import 'package:lung/components/components.dart';
import 'package:lung/layouts/use_camera/use_camera.dart';

class StepsOfPrediction extends StatelessWidget {
  const StepsOfPrediction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/prediction.png'),
              const SizedBox(height: 20,),
              const Text('How to use?',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 40,),
              const Text('Steps of Prediction',
                style: TextStyle(
                  color: Color(0xffFF7975),
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                children: const[
                   Text('1. ',
                    style: TextStyle(
                        color: Color(0xffFF7975),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                   Text('Click Next',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: const[
                   Text('2. ',
                    style: TextStyle(
                        color: Color(0xffFF7975),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                   Text('Select one option:',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                   Text('-',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                    ),
                  ),
                   Expanded(
                     child: Text('Take a Photo: use camera to take photo of x-Ray.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                      ),
                  ),
                   ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                   Text('-',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                    ),
                  ),
                   Expanded(
                     child: Text('Select from Storage: use a saved photo.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                      ),
                  ),
                   ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text('Your prediction result is ready!',
                style: TextStyle(
                    color: Color(0xffFF7975),
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(height: 20,),
              defaultButton(
                text: 'Next',
                width: 250,
                radius: 30,
                onPressed: ()
                {
                  navigateAndFinish(context, const UseCamera());
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
