import 'package:flutter/material.dart';
import 'package:shuhrat/scren/about_my.dart';

class SpleshScren extends StatefulWidget {
  const SpleshScren({super.key});

  @override
  State<SpleshScren> createState() => _SpleshScrenState();
}

class _SpleshScrenState extends State<SpleshScren>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();
    goToNextPage();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void goToNextPage() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AboutMy()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 0, 51),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Text(
            "Shuhrat",
            style: TextStyle(
              color: Color.fromARGB(255, 3, 7, 255),
              fontSize: 60,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
