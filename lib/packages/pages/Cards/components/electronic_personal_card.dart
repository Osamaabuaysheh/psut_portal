import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/Cards/components/back_image.dart';
import 'package:psut_portal/packages/pages/Cards/components/english_text_name.dart';
import 'package:psut_portal/packages/pages/Cards/components/string_card.dart';

class ElectronicPersonalCard extends StatelessWidget {
  const ElectronicPersonalCard({
    Key? key,
    required String userId,
  })  : _userId = userId,
        super(key: key);

  final String _userId;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    );
  }
}
