
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/student_details_controller.dart';

class ImageAndSignature extends StatelessWidget {
  const ImageAndSignature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            height: 70.w,
            fit: BoxFit.fill,
            imageUrl: "${ApiLogin.baseUrl}/${StudentDetailsContoller.studentImage.value}",
          ),
          Image(
            height: 65.w,
            fit: BoxFit.fill,
            image: const AssetImage("assets/images/signature.png"),
          )
        ],
      ),
    );
  }
}
