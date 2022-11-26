import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorNetworkImage extends StatelessWidget {
  const ErrorNetworkImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 50.w,
      child: const Image(image: AssetImage("images/not_found_profile.jpg")),
    );
  }
}
