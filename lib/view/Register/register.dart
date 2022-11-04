import 'package:atmo_comet/widgets/custominputfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/CustomButton.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool? checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 85,
        margin: EdgeInsets.all(30),
        child: CustomeButton(
          text: 'Register',
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),
      ),

      body:ListView(

        children: [
          Padding(
            padding: const EdgeInsets.only(left:8,right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

            Container(
              height: 50,
              margin: EdgeInsets.only(left: 20,top: 70),
              child: Image.asset('assets/Register/logoicon.png'),

            ),
            SizedBox(height: 20,),
            // lets start text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Lets get started',
                    // textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.headline2!.copyWith(
                      color:Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ],
            ),
            SizedBox(height: 30,),
            // custom fields

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex:1,
                    child: CustomInputField(
                      hint: 'First Name',
                      radius: 15,
                    ),

                    ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex:1,
                    child: CustomInputField(
                      hint: 'Last Name',

                      radius: 15,
                    ),

                  ),
                ],
                  ),
            ),

            Padding(
                padding: const EdgeInsets.all(15),
                child: CustomInputField(
                  hint: 'Phone,Email or User Name',
                  icon: Icons.email,
                  radius: 15,
                )),

            Padding(
                padding: const EdgeInsets.all(15),
                child: CustomInputField(
                  hint: 'Password',
                  icon: Icons.lock,
                  radius: 15,
                )),

            // checkbox and text

            Container(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                children: [
                  Checkbox(
                      value: checkBoxValue,
                      activeColor:Theme.of(context).primaryColor,
                      onChanged: (newValue) {
                        setState(() {
                          checkBoxValue = newValue;
                        });
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'I Agree with ',
                      style: Theme.of(context).textTheme.headline5,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Privacy',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                              color: Theme.of(context)
                                  .primaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: '  and',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        TextSpan(
                          text: '  Policy',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                              color: Theme.of(context)
                                  .primaryColor,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 160,),

            // rich text

            Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t have an account? ',
                      style: Theme.of(context).textTheme.headline5,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign up',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                              color: Theme.of(context)
                                  .primaryColor,
                              fontWeight: FontWeight.w700),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Register()),
                            // );
                          },
                        ),
                      ],
                    ),
                  )),
            ),





        ],
      ),
          ),

        ],
      ),
    );

  }
}
