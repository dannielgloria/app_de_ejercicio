import 'package:app_de_ejercicio/styles/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterCard extends StatelessWidget {
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
                "Nombre",
                style: dRegisterStyle,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: "nombre",
                      hintStyle:
                          TextStyle(color: Colors.grey, fontSize: 18.0))),
              SizedBox(height: ScreenUtil.getInstance().setHeight(33)),
              Text(
                "Correo",
                style: dRegisterStyle,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: "correo@ejemplo.com",
                      hintStyle:
                          TextStyle(color: Colors.grey, fontSize: 18.0))),
              SizedBox(height: ScreenUtil.getInstance().setHeight(33)),
              Text(
                "Contraseña",
                style: dRegisterStyle,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Contraseña",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)),
              ),

              SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
            ],
          )),
    );
  }
}
