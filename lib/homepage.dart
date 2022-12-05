import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future <void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "linki açamıyorum!!!!";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent)
          ),
            child: Center(
            child: GestureDetector(
              onTap: () {
                _launchURL("www.boun.edu.tr");
              },
              child: const Text("Siteye Git"),

      ),

        ),
        ),
      ),
    );
  }
}

