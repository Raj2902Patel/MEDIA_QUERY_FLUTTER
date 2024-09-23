import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Center(
    //       child: Text("Media Query"),
    //     ),
    //   ),
    //   body: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         width: mediaQuery.size.width * 0.3,
    //         height: mediaQuery.size.height * 0.5,
    //         decoration: const BoxDecoration(
    //           color: Colors.greenAccent,
    //         ),
    //       ),
    //       Container(
    //         width: mediaQuery.size.width * 0.7,
    //         decoration: const BoxDecoration(color: Colors.yellowAccent),
    //       ),
    //     ],
    //   ),
    // );

    return Scaffold(
      body: Builder(builder: (context) {
        if (mediaQuery.orientation == Orientation.portrait) {
          return portraitWidget(mediaQuery.size);
        } else {
          return landscapeWidget(mediaQuery.size);
        }
      }),
    );
  }

  Widget portraitWidget(Size size) {
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
      ),
      child: const Center(
        child: Text(
          "PORTRAIT",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget landscapeWidget(Size size) {
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.redAccent,
      ),
      child: const Center(
        child: Text(
          "LANDSCAPE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
