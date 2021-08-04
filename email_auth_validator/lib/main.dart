import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  ///Initialise the state
  @override
  void initState() {
    super.initState();
  }

  /// function to Send OTP
  void sendOTP() async {
    EmailAuth.sessionName = "Test Session";
    var res = await EmailAuth.sendOtp(
      receiverMail: _emailController.text,
    );

    if (res) {
      showwwdialog();
    } else {
      print("Error Sending OTP!");
    }
  }

  /// Validate the recieved OTP

  void validateOTP() async {
    var res = EmailAuth.validate(
        receiverMail: _emailController.text, userOTP: _otpController.text);
    if (res) {
      print("OTP verified!");
      _otpController.clear();
    } else
      print("Incorrect OTP!");
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Verify E-mail'),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/hey-logo.png",
            fit: BoxFit.fill,
            width: 700,
            semanticLabel: 'hey\'s logo',
            //color: Colors.teal,
            //colorBlendMode: BlendMode.darken,
            //height: 400,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  labelText: "E-mail",
                  hintText: 'Enter your e-mail id',
                  suffixIcon: TextButton(
                    child: Text("Send OTP"),
                    onPressed: () => sendOTP(),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _otpController,
              decoration: InputDecoration(
                //border: OutlineInputBorder(),
                hintText: 'Your OTP',
                labelText: "OTP",
              ),
            ),
          ),
          ElevatedButton(
              //style: sty,
              onPressed: () => validateOTP(),
              child: const Text('Verify OTP')),
        ],
      ),
    );
  }
}

Widget? showwwdialog() {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text('OTP sent'),
    );
  }
}
