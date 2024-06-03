import 'package:airbnb_clone/widgets/header.dart';
import 'package:airbnb_clone/widgets/image_carousel.dart';
import 'package:airbnb_clone/widgets/informative_card.dart';
import 'package:flutter/material.dart';

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CarouselDemo(),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.12,
            maxChildSize: 1,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(child: Icon(Icons.keyboard_arrow_up_rounded)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 15.0, bottom: 15.0),
                                child: Text(
                                  'Italy',
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(.9)),
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'For 3 Nights',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    '\$4999',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          const Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Italy is a culturally rich country in Southern Europe, known for its historical landmarks like the Colosseum and the Renaissance birthplace. Famous for its diverse cuisine, including pasta and pizza, and contributions to art and literature by icons like Da Vinci and Michelangelo, Italy has varied landscapes from the Alps to the Mediterranean coast make it a popular global travel destination.',
                            style: TextStyle(fontSize: 17.0, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          InfoCard(
                            title: 'Hello',
                            onMoreTap: () {},
                          ),
                        ]),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
