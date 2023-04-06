import 'package:doctorq_clone/controller/profile_elements_controller.dart';
import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/profile/notifcation_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileElementsController _controller = ProfileElementsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(),
              const SizedBox(height: 20),
              profileHeader(),
              const SizedBox(height: 20),
              Divider(
                thickness: 1,
                color: Colors.grey.shade300,
                indent: 10,
                endIndent: 10,
              ),
              ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: _controller.profileElementsList.length,
                shrinkWrap: true,
                itemBuilder: (context, i) => GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {
                      context.navigator(const NotificationSettings());
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: 54,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  _controller.profileElementsList[i].icon,
                                  size: 28,
                                ),
                                style: IconButton.styleFrom(
                                  foregroundColor:
                                      _controller.profileElementsList[i].color,
                                  backgroundColor: Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Text(
                                _controller.profileElementsList[i].title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              color: Color(0xFF194FE3)),
                        ],
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) => Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              const SizedBox(height: 46),
            ],
          ),
        ),
      ),
    );
  }

  Padding profileHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          const CircleAvatar(
              maxRadius: 44, backgroundImage: AssetImage('assets/male.jpg')),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Adam Smith',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('adamsmith@yourdomain.com,',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
              Text('United States of America',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ],
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: SvgPicture.asset(
        'assets/logo.svg',
      ),
      title: const Text(
        'Profile',
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      actions: [
        const SizedBox(width: 16),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
            size: 32,
          ),
          style: IconButton.styleFrom(
            foregroundColor: const Color(0xFF194FE3),
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
