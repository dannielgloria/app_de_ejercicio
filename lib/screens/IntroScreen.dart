import 'package:app_de_ejercicio/styles/colorStyle.dart';
import 'package:app_de_ejercicio/styles/fontStyle.dart';
import 'package:app_de_ejercicio/widgets/RegisterCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage;
  
  List<Widget> _buildPageIndicator(){
    List<Widget> list =[];
    for (int i=0; i < _numPages; i++){
      list.add(i == _currentPage ? _indicator(true):_indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive ? 17.0 : 13.0,
      width: isActive ? 17.0 : 13.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF006ba6) 
        : Colors.grey[350],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Container(
                //   alignment: Alignment.centerRight,
                //   child: FlatButton(
                //     onPressed: () => _showDialog(),
                //     child: Text(
                //       'Saltar',
                //       style: dButtonStyle,
                //     ),
                //   ),
                // ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Center(
                            //   child: Image(
                            //     image: AssetImage(
                            //       'assets/images/hello.png',
                            //     ),
                            //     height: 300.0,
                            //     width: 300.0,
                            //   ),
                            // ),
                            SizedBox(height: 30.0),
                            Center(
                              child: Text(
                              'EJERCICIO FISICO',
                              style: dTitleStyle,
                            ),
                            ),
                            
                            SizedBox(height: 15.0),
                            Text(
                              'Hola Fer, te damos una cálida bienvenida a tu posiblemente nueva aplicación favorita',
                              style: dSimpleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Center(
                            //   child: Image(
                            //     image: AssetImage(
                            //       'assets/images/stayHome.png',
                            //     ),
                            //     height: 300.0,
                            //     width: 300.0,
                            //   ),
                            // ),
                            
                            SizedBox(height: 30.0),
                            Center(
                              child: Text(
                              'IMPEDIMENTOS',
                              style: dTitleStyle),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'El no salir de casa no fue una tarea sencilla, posiblemente quisiste salir para ver a alguien, a caminar o tan solo ir a la tienda',
                              style: dSimpleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Center(
                            //   child: Image(
                            //     image: AssetImage(
                            //       'assets/images/stayHome.png',
                            //     ),
                            //     height: 300.0,
                            //     width: 300.0,
                            //   ),
                            // ),
                
                            SizedBox(height: 30.0),
                            Center(
                              child: Text(
                              'ACTITUD AL EJERCICIO',
                              style: dTitleStyle),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'El no salir de casa no fue una tarea sencilla, posiblemente quisiste salir para ver a alguien, a caminar o tan solo ir a la tienda',
                              style: dSimpleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Center(
                            //   child: Image(
                            //     image: AssetImage(
                            //       'assets/images/congrats.png',
                            //     ),
                            //     height: 300.0,
                            //     width: 300.0,
                            //   ),
                            // ),

                            RegisterCard(),

                            // SizedBox(height: 30.0),
                            // Text(
                            //   'Pero ¡hey! lo lograste ahora estas a salvo',
                            //   style: dTitleStyle,
                            //   textAlign: TextAlign.center,
                            // ),



                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                // _currentPage != _numPages - 1
                //     ? Expanded(
                //         child: Align(
                //           alignment: FractionalOffset.bottomRight,
                //           child: InkWell(
                //             child: Container(
                //               width: ScreenUtil.getInstance().setWidth(330),
                //               height: ScreenUtil.getInstance().setHeight(100),
                //               decoration: BoxDecoration(
                //                   gradient: LinearGradient(colors: [
                //                     Color(0xFF17ead9),
                //                     Color(0xFF6078ea)
                //                   ]),
                //                   borderRadius: BorderRadius.circular(6.0),
                //                   boxShadow: [
                //                     BoxShadow(
                //                         color: Color(0xFF6078ea).withOpacity(.3),
                //                         offset: Offset(0.0, 8.0),                                          blurRadius: 8.0)
                //                   ]),
                //               child: Material(
                //                 color: Colors.transparent,
                //                 child: InkWell(
                //                   onTap: () {
                //                     _pageController.nextPage(
                //                       duration: Duration(milliseconds: 500),
                //                       curve: Curves.ease,
                //                     );
                //                   },
                //                   child: Center(
                //                     child: Text("Siguiente",
                //                         style: dButtonStyle
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ): Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> null),
                  );
                },
                child: Center(
                  child: Container(
                    width: ScreenUtil.getInstance().setWidth(800),
                    height: ScreenUtil.getInstance().setHeight(180),
                    decoration: BoxDecoration(
                      gradient: dColorGradient,
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: dColorBoxShadow,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: Center(
                          child: Text("ACEPTAR",
                              style: dButtonStyle
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
  // user defined function
  void _showDialog() {
    // flutter defined function
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Te recomendamos no saltarte\npasos te espera una gran sorpresa!')
                    ),
                    SizedBox(
                      width: 320.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context, true); 
                        },
                        child: Text(
                          "Vale",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: const Color(0xFF679b9b),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
  
}
