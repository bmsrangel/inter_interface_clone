import 'package:flutter/material.dart';
import 'package:inter_interface_clone/custom_widgets/name_initials_widget.dart';

import 'constants.dart';
import 'custom_widgets/custom_expansion_tile.dart';
import 'custom_widgets/menu_card_widget.dart';
import 'custom_widgets/total_amount_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inter Interface',
      theme: ThemeData(
        primaryColor: Color(0xFFFF7B00),
        scaffoldBackgroundColor: Color(0xFFF3F7FA),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextStyle whiteTextStyle = TextStyle(
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    double statusBarHeigth = MediaQuery.of(context).padding.top;
    Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenWidth,
        child: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                width: screenWidth,
                height: 200,
                color: primaryColor,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    15.0, statusBarHeigth + 20.0, 15.0, 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TotalAmountWidget(
                          textStyle: whiteTextStyle,
                          total: '123,54',
                        ),
                        NameInitialsWidget(
                          initials: 'BR',
                          textColor: primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    CustomExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      title: Row(
                        children: topMenuItems
                            .map((item) => MenuCardWidget(
                                screenWidth: screenWidth, itemModel: item))
                            .toList(),
                      ),
                      children: [
                        Wrap(
                          children: allMenuItems
                              .map((item) => MenuCardWidget(
                                  screenWidth: screenWidth, itemModel: item))
                              .toList(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
