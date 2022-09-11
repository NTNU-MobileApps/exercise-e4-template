import 'package:flutter/material.dart';

class E4App extends StatelessWidget {
  const E4App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise E4',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _signedOut = false;
  bool _pictureChanged = false;
  bool _helpShown = false;

  bool get isSignedOut => _signedOut;
  bool get isPictureChanged => _pictureChanged;
  bool get isHelpShown => _helpShown;

  @override
  Widget build(BuildContext context) {
    return Text("TODO - implement this method!");
  }

  /// Show help page/dialog.
  /// Note to students: You should not change anything inside this method!
  void _showHelp() {
    setState(() {
      _helpShown = true;
    });
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Some help will be shown here"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }

  /// Simulate sign-out
  /// Note to students: You should not change anything inside this method!
  void _signOut() {
    setState(() {
      _signedOut = true;
    });
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Let's pretend we are signing out now..."),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }

  /// Simulate profile picture change
  /// Note to students: You should not change anything inside this method!
  void _changePicture() {
    setState(() {
      _pictureChanged = true;
    });
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Let's pretend we are changing the picture now..."),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }
}
