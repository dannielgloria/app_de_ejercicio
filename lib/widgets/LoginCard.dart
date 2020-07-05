import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginCard extends StatelessWidget {
  
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
            blurRadius: 15.0
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("EJERCITANDO MI CUERPO Y MENTE", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(45),
                fontFamily: "Oxygen-Bold",
                letterSpacing: 0.5)
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(45)),
            Text("Correo",
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(30),
                fontFamily: "Oxygen")
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "correo@ejemplo.com",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0))
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Contraseña",
                style: TextStyle(
                  fontFamily: "Oxygen",
                  fontSize: ScreenUtil.getInstance().setSp(30))
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Contraseña",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(45)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Oxigen",
                      fontSize: ScreenUtil.getInstance().setSp(28)),
                )
              ],
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
          ],
        )
      ),
    );
  }
}