import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'lamp_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LampProvider>(
      create: (context) => LampProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Center(
                child: Consumer<LampProvider>(
              builder: (context, lampProvider, _) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Icon(
                      lampProvider.getIcon,
                      color: lampProvider.getColor,
                      size: 100,
                    ),
                  ),
                  Text(
                    lampProvider.getTextInfo,
                    style: TextStyle(
                      color: lampProvider.getColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          lampProvider.isOn = true;
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'ON',
                            style: TextStyle(
                              color: lampProvider.getOnButtonColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: lampProvider.getOnButtonColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          lampProvider.isOn = false;
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'OFF',
                            style: TextStyle(
                              color: lampProvider.getOffButtonColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: lampProvider.getOffButtonColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
