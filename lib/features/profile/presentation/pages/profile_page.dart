import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:prime_generator/core/helpers/helper_asset_name.dart';
import 'package:prime_generator/core/helpers/helper_color_name.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController(
      text: 'Achmad Yama Roni S',
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: HelperColorName.profilePageColor,
        title: Text('My Profile',
          style: TextStyle(
            fontSize: 20.w,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Material(
        color: HelperColorName.profilePageColor,
        child: Column(
          children: [
            SizedBox(
              height: 32.w,
            ),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 100.w,
                backgroundImage: const AssetImage(HelperAssetName.avatar),
              ),
            ),
            SizedBox(
              height: 32.w,
            ),
            Text('Full Name',
              style: TextStyle(
                fontSize: 16.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 8.w,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(200.w, 32.w)),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: fullNameController,
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.w,
                  ),
                  enabled: false,
                ),
              ),
            ),
            SizedBox(
              height: 32.w,
            ),
            iconButtonSection
          ],
        ),
      ),
    );
  }

  Widget get iconButtonSection {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () async {
            final Uri url = Uri(
              scheme: 'mailto',
              path: 'yamaroni8@gmail.com',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Logo(Logos.gmail,
            size: 32.w,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        IconButton(
          onPressed: () async {
            final Uri url = Uri(
              scheme: 'https',
              host: 'github.com',
              path: 'yamaroni',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Logo(Logos.github,
            size: 32.w,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        IconButton(
          onPressed: () async {
            final Uri url = Uri(
              scheme: 'https',
              host: 'www.linkedin.com',
              path: 'in/yama-roni',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Logo(Logos.linkedin,
            size: 32.w,
          ),
        ),
      ],
    );
  }
}