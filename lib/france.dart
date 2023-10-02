import 'package:flutter/material.dart';

class FranceView extends StatelessWidget {
  const FranceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:  [
            const Image(
              image: AssetImage("assets/images/france.jpg"),
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "France",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Embark on a captivating journey through the heart of France, where every moment unveils "
                "a new layer of its enchanting tapestry. Begin in Paris, the City of Lights, where "
                "the Eiffel Tower, Louvre Museum, and the romantic Seine River set the stage for your "
                "adventure. Traverse the picturesque landscapes of the Loire Valley, adorned with "
                "magnificent châteaux and sprawling vineyards, before heading south to Provence, "
                "where fragrant lavender fields and ancient Roman ruins await. Explore the glamorous "
                "French Riviera, basking in the sun-soaked beaches of Nice and the artistic charm of "
                "Cannes.",
                textAlign: TextAlign.justify,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Place to Visit",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Card(
                    child: Image(
                      image:
                          AssetImage("assets/images/france_tourist_spot_1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Card(
                    child: Image(
                      image:
                          AssetImage("assets/images/france_tourist_spot_2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Card(
                    child: Image(
                      image:
                          AssetImage("assets/images/france_tourist_spot_3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0,bottom: 10),
              child: TextButton(onPressed: (){}, child: Container(
                height: 40,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple

                ),
                child: Center(child: Text("Press to Explore",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              )),
            )
          ],
        ),
      ),
    );
  }
}
