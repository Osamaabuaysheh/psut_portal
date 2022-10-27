import 'package:flutter/material.dart';
import 'package:psut_portal/Constants/api/login_api.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/student_details_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Models/student.dart';
import 'package:psut_portal/packages/pages/Cards/components/back_image.dart';
import 'package:psut_portal/packages/pages/Cards/components/english_text_name.dart';
import 'package:psut_portal/packages/pages/Cards/components/string_card.dart';

class ElectronicPersonalCard extends StatelessWidget {
  const ElectronicPersonalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Student?>(
      future: StudentDetailsContoller.getDetails(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                const BackImage(),
                StringCard(
                  userId: snapshot.data?.studentId.toString() ?? "0000000",
                  top: -20,
                  right: 5,
                  name: snapshot.data?.fullnameArabic.toString() ?? "No Data",
                  collage: snapshot.data?.colleage.toString() ?? "Collage",
                  imageUrl: "${ApiLogin.baseUrl}/${snapshot.data?.url}",
                ),
                EnglishTextName(
                    englishName:
                        snapshot.data?.fullName?.toUpperCase().toString() ??
                            "No Data"),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        } else if (snapshot.hasError) {
          return const Text("Error Connnection");
        } else {
          return Container();
        }
      },
    );
  }
}
