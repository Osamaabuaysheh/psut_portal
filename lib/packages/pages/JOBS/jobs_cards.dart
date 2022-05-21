import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/utils/svg_images.dart';

bool toggle = false;

class JobsCard extends StatelessWidget {
  const JobsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        //color: Colors.amber,
        width: 315.w,
        height: 97.h,
        child: Card(
          //color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.r),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JobDesc(),
                  ),
                );
              },
              //tileColor: Colors.green,
              textColor: AppColors.blue,
              isThreeLine: true,
              leading: SizedBox(
                child: AppSvg.logo,
                width: 50,
                height: 100,
              ),
              title: const Text(
                'Job Title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Company Name',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Full Time',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              trailing: IconButton(
                icon: toggle
                    ? const Icon(Icons.bookmark)
                    : Icon(
                        Icons.bookmark_border,
                        size: 30,
                        color: AppColors.blue,
                      ),
                onPressed: () {
                  //* ( setState() {
                  //*   // Here we changing the icon.
                  //*   toggle = !toggle;
                  //* }
                  (Set<MaterialState> states) {
                    states.contains(MaterialState.pressed)
                        ? const Icon(Icons.bookmark)
                        : Icon(
                            Icons.bookmark_border,
                            size: 30,
                            color: AppColors.blue,
                          );
                  };
                  // );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
