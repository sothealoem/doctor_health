// ignore_for_file: public_member_api_docs, sort_constructors_first
class DoctorModel {
  final String name;
  final String position;
  final double averageReview;
  final int totalReviews;
  final String profile;
  DoctorModel({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReviews,
    required this.profile,
  });
}

List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Luke Holland",
    position: "General Practitioner",
    averageReview: 3.2,
    totalReviews: 124,
    profile: 'assets/doctor_1.jpg',
  ),
  DoctorModel(
    name: "Sophie Harmon",
    position: "General Practitioner",
    averageReview: 4.1,
    totalReviews: 1240,
    profile: 'assets/doctor_2.jpg',
  ),
  DoctorModel(
    name: "Naomoi Pinky",
    position: "General Practitioner",
    averageReview: 3.9,
    totalReviews: 6274,
    profile: 'assets/doctor_3.jpg',
  ),
  DoctorModel(
    name: "Sophie Harmon",
    position: "General Practitioner",
    averageReview: 4.5,
    totalReviews: 340,
    profile: 'assets/doctor_2.jpg',
  ),
  DoctorModel(
    name: "Naomoi Pinky",
    position: "General Practitioner",
    averageReview: 3.8,
    totalReviews: 69,
    profile: 'assets/doctor_3.jpg',
  ),
];
