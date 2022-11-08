import 'dart:ui';
import 'package:atmo_comet/Helper/RouteHelper.dart';
import 'package:atmo_comet/widgets/CustomBackButton.dart';
import 'package:atmo_comet/widgets/CustomButton.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PicAndDrop extends StatelessWidget {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 30,right: 30,bottom: 30),
        height: 85,
        child: CustomeButton(
          text: 'Continue',
          color: Colors.white,
          // borderRadius: 0,
          onPressed:(){
          } ,),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: CustomBackButton(),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(left: 20,right: 20,bottom: 15),
            children:[
              Container (
                decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.all(Radius.circular(8))
                ),
                width:100,
                margin :EdgeInsets.only(top:10,bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 5,bottom: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height:5),
                          Text('Pickup address',style: TextStyle( color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 250,
                            child: TextField(decoration: InputDecoration(hintText: 'Select pickup location',
                                hintStyle: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),
                                prefixIcon: Icon(Icons.location_on_outlined),iconColor: Colors.black
                            ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Text('Pickup date',style: TextStyle( color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700

                          ),),
                          Container(
                            height: 65,
                            width: 250,
                            // color: Colors.amberAccent,
                            child: DatePicker(
                              DateTime.now(),
                              width: 50,
                              height: 70,
                              controller: _controller,
                              initialSelectedDate: DateTime.now(),
                              dayTextStyle: const TextStyle(fontSize: 7),
                              dateTextStyle: const TextStyle(fontSize: 11),
                              monthTextStyle: const TextStyle(fontSize: 7),
                              selectionColor: Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
                              selectedTextColor: Colors.black,
                              // inactiveDates: [
                              //   DateTime.now().add(Duration(days: 3)),
                              //   DateTime.now().add(Duration(days: 4)),
                              //   // DateTime.now().add(Duration(days: 7))
                              // ],
                              onDateChange: (date) {
                                // New date selected
                                // setState(() {
                                //   _selectedValue = date;
                                // });
                              },
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text('Pickup time',style: TextStyle( color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 250,
                            child: TextField(decoration: InputDecoration(hintText: 'Enter prefered pickup time',
                              hintStyle: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),
                            ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container (
                decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.all(Radius.circular(8))
                ),
                width:100,
                margin :EdgeInsets.only(top:10,bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 5,bottom: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height:5),
                          Text('Drop address',style: TextStyle( color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 250,
                            child: TextField(decoration: InputDecoration(hintText: 'Select drop location',
                                hintStyle: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),
                                prefixIcon: Icon(Icons.location_on_outlined),iconColor: Colors.black
                            ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Text('Delivery date',style: TextStyle( color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700

                          ),),
                          Container(
                            height: 65,
                            width: 250,
                            // color: Colors.amberAccent,
                            child: DatePicker(
                              DateTime.now(),
                              width: 50,
                              height: 70,
                              controller: _controller,
                              initialSelectedDate: DateTime.now(),
                              dayTextStyle: const TextStyle(fontSize: 7),
                              dateTextStyle: const TextStyle(fontSize: 11),
                              monthTextStyle: const TextStyle(fontSize: 7),
                              selectionColor: Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
                              selectedTextColor: Colors.black,
                              // inactiveDates: [
                              //   DateTime.now().add(Duration(days: 3)),
                              //   DateTime.now().add(Duration(days: 4)),
                              //   // DateTime.now().add(Duration(days: 7))
                              // ],
                              onDateChange: (date) {
                                // New date selected
                                // setState(() {
                                //   _selectedValue = date;
                                // });
                              },
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text('Drop time',style: TextStyle( color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 250,
                            child: TextField(decoration: InputDecoration(hintText: 'Enter prefered drop time',
                              hintStyle: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),
                            ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Text('Pickup address',style: TextStyle( color: Theme.of(context).primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700
              ),
              ),
              SizedBox(height: 5,),
              TextField (
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField (
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                minLines: 3,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
              ),
            ],
        ),
      ),
    );
  }
}
