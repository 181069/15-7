import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive/assignment/data/data_source.dart';
import 'package:responsive/assignment/ui/main_page.dart';
import 'package:responsive/forms/data_repositories.dart';
import 'package:responsive/forms/form_ui.dart';
import 'package:responsive/forms/router/router.dart';
import 'package:responsive/forms/ui/home/ui/home_page.dart';
import 'package:responsive/forms/ui/register/main_register_screen.dart';
import 'package:responsive/responsive/responsive_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive/sharedPre/redirectPage.dart';
import 'package:responsive/sharedPre/sharedPreference.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpHelper.spHelper.initSharedPrefences();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: redirectP(),
    );

  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('name'),
        ),
        body: Container(
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Image.network(
                          products[index].image,
                          fit: BoxFit.cover,
                        )),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 40,
                        ),
                        onPressed: () {},
                      ),
                    )),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 40,
                        ),
                        onPressed: () {},
                      ),
                    ))
                  ],
                );

/*
                return Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            products[index].image,
                          ))),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                );

                */
              }),
        ));
  }
}

class CachImageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: imagesUrls.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: double.infinity,
              child: CachedNetworkImage(
                  placeholder: (context, x) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  imageUrl: imagesUrls[index]),
            );
          }),
    );
  }
}
