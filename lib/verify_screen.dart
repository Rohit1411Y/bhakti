import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyScreen extends StatelessWidget {
   String mobileNo;
   VerifyScreen({super.key,required this.mobileNo});
  
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/temple4.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Container()),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), 
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 500,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              'Enter 4 digit verification',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 5),
                            // const Text(
                            //   'Please enter the 4 digit verification code received on ${'+919982317865'}. Wrong Number?',
                            //   style: TextStyle(color: Colors.grey,fontSize: 12),
                            //   textAlign: TextAlign.left,
                            // ),
                            RichText(text:   TextSpan(
                              text: 'Please enter the 4 digit verification code received\non $mobileNo.',

                              style:const TextStyle(color: Colors.grey,fontSize: 12),
                              children:<TextSpan>[
                                TextSpan(text: "Wrong Number?",style: const TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(136, 0, 0, 0)),
                                recognizer: TapGestureRecognizer()..onTap = () => Navigator.pop(context),)
                              ]
                              
                            )
                            ),
                            const SizedBox(height: 20),
                          

                           OtpTextField(
              numberOfFields: 4,
              showFieldAsBox: true,
              fieldWidth: 55,
              fieldHeight: 55,
          
              
             margin: const EdgeInsets.all(14),
              borderWidth: 2,
              disabledBorderColor: Colors.orange,
              enabledBorderColor: Colors.orange,
              focusedBorderColor: Colors.orange,
              borderColor: Colors.orange,
              cursorColor: Colors.orange,
              borderRadius: BorderRadius.circular(8),
              onCodeChanged: (pin) {
                // Handle OTP value change
              },
              onSubmit: (pin) {
                // Handle OTP verification
              },
            ),





                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                                 alignment: Alignment.centerRight,
                                child: Container(
                                  height: 40,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    gradient:const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.yellow, Colors.orange]),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  
                                    children: <Widget>[
                                      Text('Verify',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                     SizedBox(width: 5),
                                      Icon(Icons.arrow_forward,color: Colors.white,),
                                     
                                    ],
                                  ),
                                ),
                              
                            ),
                          const  SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 180,
                        right: 240,
                        child: Image.asset('assets/images/pattern2.jpeg'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
