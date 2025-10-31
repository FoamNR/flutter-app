import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // keeps column centered tightly
            children: [
              Image.network(
                'https://scontent.fbkk22-6.fna.fbcdn.net/v/t39.30808-6/498529393_1821459991732821_2940295471315935585_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=uU7mGatouQEQ7kNvwG8fU2g&_nc_oc=AdlnaXSDwOKGVG8K-otCh3MtB7MVItOXPB5gWJMW4DNf2GYtdjUfL7ojr1R2lt9JWtdYi84tvjEROmEzJ1MxfE1w&_nc_zt=23&_nc_ht=scontent.fbkk22-6.fna&_nc_gid=AHbmI6j4qPY4yyU6NbNMmw&oh=00_AfftIWzTAx2NlluqjguuuH8kofQhmSGOpQGqERZAtopBCQ&oe=6908D76C',
                width: 300,
              ),
              const SizedBox(height: 16),
              const Text(
                "แฟนสาวสุดสวย",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
