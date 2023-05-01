import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/profile_screen/widgets/profile_picture.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';

class ProfileBiography extends StatelessWidget {
  const ProfileBiography({
    super.key,
    required this.userName,
    required this.userBiography,
    required this.editFunction,
  });

  final String userName;
  final String userBiography;
  final VoidCallback editFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: Get.textTheme.displayLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              gapH8,
              Text(
                userBiography,
                style: Get.textTheme.titleLarge?.copyWith(
                  fontWeight: AppFonts.interRegular,
                ),
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
              ),
              gapH8,
              Align(
                alignment: Alignment.centerLeft,
                child: PrimaryOutlinedButton(
                  isText: true,
                  title: 'Edit',
                  onPressed: editFunction,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              // bottom: AppSizes.p48,
              bottom: (userBiography.length < 20 && userName.length < 10)
                  ? AppSizes.p28
                  : AppSizes.p70,
            ),
            child: const ProfilePicture(),
          ),
        ),
      ],
    );
  }
}
