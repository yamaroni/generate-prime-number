import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainMenuWidget extends StatelessWidget {
  final IconData menuIcon;
  final String? menuName;
  final Function? onTap;
  const MainMenuWidget({super.key,
    required this.menuIcon,
    this.menuName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(menuIcon,
            size: 32.w,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(menuName ?? '',
            style: TextStyle(
              fontSize: 16.w,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      onTap: onTap as void Function()?,
    );
  }
}