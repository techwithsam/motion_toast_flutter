import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: toast,
                child: const Text('Success Button'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: ftoast,
                child: const Text('Failed Button'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: etoast,
                child: const Text('Error Button'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: gtoast,
                child: const Text('Delete Button'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: intoast,
                child: const Text('Info Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toast() {
    MotionToast.success(
      title: "Success Motion Toast",
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      description: "Example of success motion toast",
      descriptionStyle: const TextStyle(fontSize: 12),
      toastDuration: const Duration(seconds: 2),
      iconType: ICON_TYPE.cupertino,
      width: 300,
    ).show(context);
  }

  void ftoast() {
    MotionToast.warning(
      title: "Error Motion Toast",
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      description: "Example of success motion toast",
      descriptionStyle: const TextStyle(fontSize: 12),
      toastDuration: const Duration(seconds: 2),
      iconType: ICON_TYPE.cupertino,
      width: 300,
    ).show(context);
  }

  void etoast() {
    MotionToast.error(
      title: "Error Motion Toast",
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      description: "Example of success motion toast",
      descriptionStyle: const TextStyle(fontSize: 12),
      toastDuration: const Duration(seconds: 2),
      iconType: ICON_TYPE.cupertino,
      width: 300,
    ).show(context);
  }

  void gtoast() {
    MotionToast.delete(
      title: "Delete Motion Toast",
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      description: "Example of success motion toast",
      descriptionStyle: const TextStyle(fontSize: 12),
      toastDuration: const Duration(seconds: 2),
      iconType: ICON_TYPE.cupertino,
      width: 300,
    ).show(context);
  }

  void intoast() {
    MotionToast.info(
      title: "Info Motion Toast",
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      description: "Example of success motion toast",
      descriptionStyle: const TextStyle(fontSize: 12),
      toastDuration: const Duration(seconds: 2),
      iconType: ICON_TYPE.cupertino,
      width: 300,
    ).show(context);
  }
}
