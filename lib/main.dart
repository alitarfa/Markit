import 'package:e_commerce_flutter/components/authentication/login/login.dart';
import 'package:e_commerce_flutter/components/root/rootPage.dart';
import 'package:e_commerce_flutter/service/ServiceApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        home: RootPage(),
      ),
      create: (_) => ServiceApi.create(),
      dispose: (_, ServiceApi serviceApi) => serviceApi.client.dispose(),
    );
  }
}
