import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Modal Sheets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  showMaterialModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Wrap(children: const [
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text('Share'),
                          ),
                          ListTile(
                            leading: Icon(Icons.copy),
                            title: Text('Copy Link'),
                          ),
                          ListTile(
                            leading: Icon(Icons.edit),
                            title: Text('Edit'),
                          ),
                        ]);
                      });
                },
                child: const Text('Material Modal')),
            ElevatedButton(
                onPressed: () {
                  showCupertinoModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.red,
                        );
                      });
                },
                child: const Text('Cupertino Modal')),
            ElevatedButton(
                onPressed: () {
                  showBarModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.green,
                        );
                      });
                },
                child: const Text('Bar Modal')),

            // showAvatarModalBottomSheet
          ],
        ),
      ),
    );
  }
}
