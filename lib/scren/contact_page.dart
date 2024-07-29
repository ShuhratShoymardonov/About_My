import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyContact extends StatelessWidget {
  const MyContact({
    super.key,
  });

  final String telegramUrl = "https://t.me/Shuhrato5";

  Future<void> _launchTelegram() async {
    if (await canLaunch(telegramUrl)) {
      await launch(telegramUrl);
    } else {
      throw 'Could not launch $telegramUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                          Uri.parse("https://t.me/@Shuhrato5"),
                          mode: LaunchMode.inAppBrowserView,
                        );
                      },
                      child: Container(
                        width: 196,
                        height: 96,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff35A5EE),
                              Color(0xff1264D6),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.telegram_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                Icon(
                                  FontAwesomeIcons.externalLink,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Text(
                              "Telegram",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "@Shuhrato5",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    InkWell(
                      onTap: () async {
                        await launchUrl(
                          Uri.parse("https://www.linkedin.com/help/linkedin"),
                          mode: LaunchMode.inAppBrowserView,
                        );
                      },
                      child: Container(
                        width: 114,
                        height: 96,
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff143061),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  FontAwesomeIcons.linkedinIn,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Icon(
                                  FontAwesomeIcons.externalLink,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Text(
                              "Linkedin",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () async {
                  await launchUrl(
                    Uri.parse("https://github.com/ShuhratShoymardonov"),
                    mode: LaunchMode.inAppBrowserView,
                  );
                },
                child: Container(
                  width: 321,
                  height: 110,
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff25262F),
                        Color(0xff0C0D16),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                            size: 45,
                          ),
                          Icon(
                            FontAwesomeIcons.externalLink,
                            size: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        "Github",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () async {
                      final url = Uri(scheme: 'tel', path: '+992 001778373');
                      if (await canLaunchUrl(url)) {
                        launchUrl(url);
                      }
                      ;
                    },
                    child: Container(
                      width: 114,
                      height: 96,
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff143061),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 35,
                              ),
                              Icon(
                                FontAwesomeIcons.externalLink,
                                size: 15,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Text(
                            "Phone",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "+992 001778373",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(
                        Uri.parse(
                            "https://mail.google.com/mail/u/0/#search/shoymardonovshuhrat3%40gmail.com"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 96,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff35A5EE),
                            Color(0xff1264D6),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.white,
                                size: 40,
                              ),
                              Icon(
                                FontAwesomeIcons.externalLink,
                                size: 15,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "shoymardonovshuhrat3@gmail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
