import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Cards/components/back_image.dart';
import 'package:psut_portal/packages/pages/Cards/components/english_text_name.dart';
import 'package:psut_portal/packages/pages/Cards/components/string_card.dart';

class HomeBodyCards extends StatelessWidget {
  const HomeBodyCards({
    Key? key,
    final String uID = "20180926",
  })  : _userId = uID,
        super(key: key);

  final String _userId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          // const AddCardDottedButton(),
          InkWell(
            child: Stack(
              children: [
                const BackImage(),
                StringCard(
                  userId: _userId,
                  top: -20,
                  right: 5,
                  name: 'اسامه محمد ابو عيشه',
                  collage: 'كلية الملك الحسين لعلوم الحاسوب',
                ),
                const EnglishTextName(englishName: "OSAMA M ABUAYSHEH"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
