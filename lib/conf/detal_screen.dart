import 'package:application/conf/landspace_container.dart';
import 'package:application/conf/portrait_container.dart';
import 'package:application/conf/row_styling.dart';
import 'package:application/conf/text_style.dart';
import 'package:flutter/material.dart';

class Detailscreen extends StatelessWidget {
  final data;
  const Detailscreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.redAccent,
        body: Column(
          children: [
            Expanded(
                child: Container(
                    width: double.infinity,
                    color: Colors.transparent,
                    child: orientation == Orientation.portrait
                        ? portraitContainer(data)
                        : landSpace())),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          text: 'about',
                        ),
                        Tab(
                          text: 'basetell',
                        )
                      ]),
                  Expanded(
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(12)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              normalText(
                                  color: Colors.black,
                                  size: 16,
                                  text:
                                      'It can be seen napin in the jungle having a send on its back.'),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: width - 100,
                                  child: Card(
                                    color: Colors.grey[50],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            headingText(
                                                color: Colors.grey,
                                                size: 16,
                                                text: 'Height'),
                                            headingText(
                                                color: Colors.grey,
                                                size: 16,
                                                text: '15ft'),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            headingText(
                                                color: Colors.grey,
                                                size: 16,
                                                text: 'Height'),
                                            headingText(
                                                color: Colors.grey,
                                                size: 16,
                                                text: '15ft'),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              headingText(
                                  color: Colors.black,
                                  size: 16,
                                  text: 'Breeding'),
                              const SizedBox(
                                height: 10,
                              ),
                              rowStyling(text: "Gender", value: "Male"),
                              rowStyling(
                                  text: "Egg Cycle", value: "Grass monster"),
                              rowStyling(text: "Evolution", value: "Male")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.cyan,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: headingText(
                                      color: Colors.grey, size: 16, text: "HP"),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: headingText(
                                      color: Colors.grey, size: 16, text: "HP"),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
