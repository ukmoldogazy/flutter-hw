import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hw14_capitals/constants/colors.dart';
import 'package:hw14_capitals/model/continents.dart';
import 'package:hw14_capitals/model/question_answer.dart';

import 'test_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Continents> continents = continentsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarBg,
          title: const Text(
            'Мамлекеттер борбору',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: AppColors.blue,
              ),
              tooltip: 'Settings',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.black,
              ),
              tooltip: 'Learn more',
              onPressed: () {},
            ),
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1.4,
              color: AppColors.black,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            // childAspectRatio: 3 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: continents.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        hoverColor: Colors.red,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TestView(
                                question: questionAnswerList,
                              ),
                            ),
                          );
                        },
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Text(
                                  continents[index].name,
                                  style: TextStyle(
                                      color: continents[index].color,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                Expanded(
                                  child: SvgPicture.asset(
                                    'assets/${continents[index].image}.svg',
                                    width: 100,
                                    // color: continents[index].color,
                                  ),
                                )
                              ],
                            )),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
