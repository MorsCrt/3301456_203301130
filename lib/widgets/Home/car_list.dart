import 'package:carrental/constants/constant.dart';
import 'package:carrental/models/cars/cars.dart';
import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  final int index;
  const CarList(
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Car car = carInfoHome[index];
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 24, right: 24),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 26, 25, 25),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "\$${car.price}",
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      car.brand,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Center(child: Image.asset(car.image))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
