import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/report_car_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Models/permit_card_model.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:psut_portal/utils/path_image.dart';

class PermitCard extends StatelessWidget {
  const PermitCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PermitCardModel?>(
      future: ReportCarController.getPermitCard(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 400.w,
                  height: 200.w,
                  child: Image(
                    image: AssetImage(
                      snapshot.data?.colleage ==
                              "كلية الملك الخسين لعلوم الحوسبة"
                          ? PathImage.itLogo
                          : PathImage.engLogo,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                Center(
                    child: Text(
                  snapshot.data?.permitNumber.toString() ?? "",
                  style: CustomTheme.bigTitle,
                )),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Text("Error Connnection");
          }
        } else if (!snapshot.hasData) {
          return Container();
        } else {
          return const Text("Error Connnection");
        }
      },
    );
  }
}
