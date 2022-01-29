import 'dart:async';
import 'package:pin_entry_field/pin_entry.dart';
import 'package:pin_entry_field/pin_entry_field.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import 'package:flutter/material.dart';



class OTP_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return  PinEntryField(
      
    inputType: PinInputType.none,
    pinInputCustom: "-", ///Only use for input type is PinInputType.custom
    onSubmit: (text) {
       print(text);
    },
    fieldCount: 4,
    fieldWidth: 50,
    height: 60,
    fieldStyle: PinEntryStyle(
      
       textStyle: TextStyle(
           color: Colors.black,
           fontSize: 20,
           fontFamily: 'M_Medium' ,
           fontWeight: FontWeight.w600
       ),
       fieldBackgroundColor: Colors.blue[50],
       fieldBorder: Border.all(
         color: Colors.transparent,
         width: 2,
       ),
       fieldBorderRadius: BorderRadius.circular(10),
       fieldPadding: 20
        
    ),
  ); 
  }

}