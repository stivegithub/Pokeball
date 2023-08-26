import 'package:flutter/material.dart';
import 'conf/api_services.dart';
import 'conf/text_style.dart';
import 'conf/detal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text(
              'PokeApp',
              style: TextStyle(fontFamily: 'circular_bold', fontSize: 36),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: FutureBuilder(
                    future: getAPI(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data;
                        return GridView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: data?.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 8,
                                    crossAxisSpacing: 8),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Detailscreen(
                                                data: data[index],
                                              )));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: -20,
                                        right: -20,
                                        child: Image.asset(
                                          'images/pocket.jpeg',
                                          width: 120,
                                          height: 120,
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 8,
                                          right: 8,
                                          child: Image.network(
                                            data[index]['imageurl'],
                                            width: 150,
                                          )),
                                      Positioned(
                                          top: 20,
                                          left: 10,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              headingText(
                                                  text: snapshot.data[index]
                                                          ['name']
                                                      .toString(),
                                                  size: 24,
                                                  color: Colors.white),
                                              typeContainer(
                                                  color: Colors.white,
                                                  size: 16,
                                                  text: 'Grass'),
                                              const SizedBox(height: 6),
                                              typeContainer(
                                                  color: Colors.white,
                                                  size: 16,
                                                  text: 'Poisson')
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            });
                      }
                      return Container();
                    })),
          ],
        ),
      )),
    );
  }
}
