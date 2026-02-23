import 'package:flutter/material.dart';
import 'package:space_app_ui/models/planet_model.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = "details";

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlanetModel planet =
        ModalRoute.of(context)!.settings.arguments as PlanetModel;
    return Scaffold(
      backgroundColor: Color(0XFF0E0E0E),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 170,
                width: double.infinity,
                child: Image(
                  image: AssetImage("assets/images/Rectangle 4.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0XFF0E0E0E), Colors.transparent],
                  ),
                ),
              ),
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    planet.name,
                    style: TextStyle(
                      fontFamily: 'spaceApp',
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: SizedBox(
                  width: 300,
                  child: Text(
                    planet.title,
                    style: TextStyle(
                      fontFamily: 'spaceApp',
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(1),
                    backgroundColor: Color(0xFFEE403D),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                  left: 12,
                  top: 10,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage(planet.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      planet.description,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Distance from Sun (km) :${planet.distance}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Length of Day (hours) :${planet.dayLength}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Orbital Period (Earth years) : ${planet.orbitalPeriod}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Radius (km) :${planet.radius}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Mass (kg) :${planet.mass}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Gravity (m/s²) : ${planet.gravity}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Surface Area (km²) :${planet.surfaceArea}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'spaceApp',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
