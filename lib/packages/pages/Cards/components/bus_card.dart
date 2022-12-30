import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/bus_route_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/student_details_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Models/bus_route.dart';
import 'package:psut_portal/packages/pages/Cards/components/bus_details.dart';
import 'package:psut_portal/packages/pages/Cards/components/image_and_signature.dart';

class BusCard extends StatelessWidget {
  const BusCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StudentDetailsContoller contoller = Get.find();
    return FutureBuilder<BusRoute?>(
      future: BusRouteStudentController.getDetails(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return Container(
              padding: EdgeInsets.all(10.w),
              margin: EdgeInsets.all(5.w),
              width: double.infinity,
              height: 200.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1.r,
                    blurRadius: 8.r,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const ImageAndSignature(),
                  BusDetails(
                    id: snapshot.data?.studentId!.toString() ?? "",
                    name: StudentDetailsContoller.studentNameArabic.value,
                    route: snapshot.data?.route! ?? "",
                    mwBack: snapshot.data?.monWedBack!.toString() ?? "",
                    mwPresence: snapshot.data?.monWedPresence!.toString() ?? "",
                    sttBack: snapshot.data?.sunTueThuBack!.toString() ?? "",
                    sttPresence: snapshot.data?.sunTueThuPresence!.toString() ?? "",
                  ),
                ],
              ),
            );
          } else {
            return const Text("Error Data ");
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
