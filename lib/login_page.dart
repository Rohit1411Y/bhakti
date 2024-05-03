import 'package:bhakti/verify_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    TextEditingController mobileController = TextEditingController();
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
                              'Enter Mobile Number',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'We will send you 4 digit verification code to register mobile number',
                              style: TextStyle(color: Colors.grey,fontSize: 12),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 20),
                             Row(
                              children: [
                               
                               const  Expanded(
                                  flex: 1,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      hintText: '+91',
                                      hintStyle: TextStyle(
                                          fontSize: 24,
                                          color: Colors.orange),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.orange),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.orange),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.orange),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                            width: 1,
                                          )),
                                    ),
                                  ),
                                ),
                               const  SizedBox(
                                    width:
                                        8),
                                
                                Expanded(
                                  flex: 5,
                                  child: TextField(
                                    controller: mobileController,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.phone,
                                      maxLength: 10,
                                      cursorHeight: 30,
                                      style:const  TextStyle(height: 1, fontSize: 30,color: Colors.orange),
                                     
                                      decoration: const InputDecoration(
                                        counterText: "",
                                       
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 1, horizontal: 5),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                            borderSide: BorderSide(
                                              width: 1,
                                            )),
                                      
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                                 alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> VerifyScreen(mobileNo: mobileController.text.toString())));
                                  },
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
                                        Text('Generate',
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                       SizedBox(width: 5),
                                        Icon(Icons.arrow_forward,color: Colors.white,),
                                       
                                      ],
                                    ),
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
                        top: 160,
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
