import 'package:flutter/material.dart';

import '../../widgets/CustomBackButton.dart';
import '../../widgets/CustomButton.dart';

class DeliveredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 85,
          margin: EdgeInsets.only(left: 30,right: 30,bottom: 30),
        child: CustomeButton(
          text: 'Email Invoice',
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          'Package Delivered',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.white,
              ),
        ),
        leading: CustomBackButton(),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //picked at text row
              Container(
                margin: EdgeInsets.only(top: 25, left: 25),
                child: RichText(
                  text: TextSpan(
                    text: 'Picked at ',
                    style: Theme.of(context).textTheme.headline4,
                    children: <TextSpan>[
                      TextSpan(
                        text: '14 June 2022',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '  at',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      TextSpan(
                        text: ' 4:45',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),

              // Foxinn text
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        'Foxinn Medicals',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "9°58'05.5N 76°17'40.7E",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              //picked at text row
              Container(
                margin: EdgeInsets.only(top: 15, left: 25),
                child: RichText(
                  text: TextSpan(
                    text: 'Picked at ',
                    style: Theme.of(context).textTheme.headline4,
                    children: <TextSpan>[
                      TextSpan(
                        text: '14 June 2022',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '  at',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      TextSpan(
                        text: ' 4:45',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              //mark evan text row
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        'Mark Evans',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "9°58'05.5N 76°17'40.7E",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              // line
              Container(
                margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                height: 1,
                color: Colors.grey,
              ),
              // delivery text row
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        'Delivery Charges',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "₹40.00",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // express text row
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        'Express Delivery',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "₹10.00",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // Tax and services text row
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        'Tax and Services Charges',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "₹5.00",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              //line
              Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                height: 1,
                color: Colors.grey,
              ),
              // total
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        'Package Total',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "₹ 55.00",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:25,top: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Package Details',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                          fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Package Number',style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                       color: Colors.grey,


                    ),),
                    Text('PKG678749392',style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                        color: Colors.black,
                      fontWeight: FontWeight.bold


                    ),),
                    SizedBox(height: 5,),
                    Text('Package Items',style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                        color: Colors.grey,


                    ),),
                    Text('Books and Stationary',style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    ),),
                    SizedBox(height: 5,),
                    Text('Delivery Type',style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                        color: Colors.grey,


                    ),),
                    Text('Express Delivery',style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    ),),
                    SizedBox(height: 5,),
                    Text('Delivery Instructions',style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                        color: Colors.grey,


                    ),),
                    Text('Wait for confirmation',style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    ),),
                    SizedBox(height: 5,),
                    Text('Date',style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                        color: Colors.grey,


                    ),),
                    Text('14 June 2022 at 3:45',style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold

                    ),),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
