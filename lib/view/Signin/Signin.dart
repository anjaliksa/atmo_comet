import 'package:atmo_comet/widgets/custominputfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/CustomButton.dart';

class SigninPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 85,
        margin: EdgeInsets.only(left:30,right: 30,bottom: 30),
        child: CustomeButton(
          text: 'Sign In',
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // logo
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20,top: 30),
                child: Image.asset('assets/Register/logoicon.png'),

              ),
              const SizedBox(height: 100),
              // 1st text
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Lets Sign In You',
                      // textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.headline2!.copyWith(
                        color:Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              // 2nd text
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Welcome back \n'
                        'You have been missed!',
                      // textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.headline2!.copyWith(
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ],
              ),
               const SizedBox(height: 10),
              // 1st input field
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomInputField(
                    hint: 'Phone,Email or User Name',
                    icon: Icons.email,
                    radius: 15,
                  )),
              // 2nd input field
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomInputField(
                    hint: 'Password',
                    icon: Icons.lock,
                    radius: 15,
                  )),
              // forgot password
              Container(
                padding: const EdgeInsets.only(left: 200),
                child: Text(
                  'Forgot the password',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 150,),
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
          )
        ],
      ),
    );
  }

}