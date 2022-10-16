import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/rest/custom_dio.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          ButtonWidget.primary(
            label: 'Testando Auth',
            onPressed: () async {
              context.get<CustomDio>().auth().get('/api/me');

              // final sp = await SharedPreferences.getInstance();
              // sp.clear();
              // Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
            },
          ),
          ButtonWidget.primary(
            label: 'LogOut',
            onPressed: () async {
              // context.get<CustomDio>().auth().get('/api/me');

              final sp = await SharedPreferences.getInstance();
              sp.clear();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
