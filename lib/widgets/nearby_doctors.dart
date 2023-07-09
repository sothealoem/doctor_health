import 'package:doctor_health/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyDoctors.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(nearbyDoctors[index].profile),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nearbyDoctors[index].name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('General Practitioner'),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Colors.yellow[700],
                        size: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          right: 6,
                        ),
                        child: Text(
                          nearbyDoctors[index].averageReview.toStringAsFixed(1),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                      "(${nearbyDoctors[index].totalReviews.toString()})"  
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
