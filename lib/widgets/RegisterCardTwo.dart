import 'package:app_de_ejercicio/styles/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15.0),
              blurRadius: 15.0),
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0),
        ],
      ),
      child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text("MI PERFIL",
              //   textAlign: TextAlign.center,
              //   style: dTitleStyle,
              // ),
              // SizedBox(height: ScreenUtil.getInstance().setHeight(35)),
              Text(
                "Altura",
                style: dRegisterStyle,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Altura en cm",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
              SizedBox(height: ScreenUtil.getInstance().setHeight(33)),
              Text(
                "Peso",
                style: dRegisterStyle,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Peso en kg",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
              SizedBox(height: ScreenUtil.getInstance().setHeight(33)),
              Text(
                "Año de nacimiento",
                style: dRegisterStyle,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "AAAA",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
              SizedBox(height: ScreenUtil.getInstance().setHeight(33)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Acepto los términos y condiciones",
                    style: dLinkStyle,
                  )
                ],
              ),
              SizedBox(height: ScreenUtil.getInstance().setHeight(35)),
            ],
          )),
    );
  }
}
