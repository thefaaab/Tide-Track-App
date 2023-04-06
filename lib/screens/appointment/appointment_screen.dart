import 'package:doctorq_clone/controller/appointment_tile_controller.dart';
import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/appointment/doc_profile_screen.dart';
import 'package:doctorq_clone/widget/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  int _currentIndex = 0;
  final ProfileTileController _controller = ProfileTileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: _currentIndex == 0
                          ? const Color(0xFF194FE3)
                          : Colors.white,
                      foregroundColor: _currentIndex == 0
                          ? Colors.white
                          : const Color(0xFF194FE3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                        side: const BorderSide(color: Color(0xFF194FE3)),
                      ),
                    ),
                    child: const Text('Upcoming'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: _currentIndex == 1
                          ? const Color(0xFF194FE3)
                          : Colors.white,
                      foregroundColor: _currentIndex == 1
                          ? Colors.white
                          : const Color(0xFF194FE3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                        side: const BorderSide(color: Color(0xFF194FE3)),
                      ),
                    ),
                    child: const Text('Past'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            searchFilterTab(),
            const SizedBox(height: 20),
            Text('Today, ${DateFormat('dd MMM yyyy').format(DateTime.now())}'),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _controller.profileTileList.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          context.navigator(const DocProfileScreen());
                        },
                        child: ProfileTile(
                            image: _controller.profileTileList[index].image,
                            icon: _controller.profileTileList[index].icon,
                            name: _controller.profileTileList[index].name,
                            description:
                                _controller.profileTileList[index].description,
                            time: _controller.profileTileList[index].time,
                            trailingIcon: _controller
                                .profileTileList[index].trailingIcon),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row searchFilterTab() {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(128),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  hintText: 'Search',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.search, size: 26),
                    ),
                  )),
            ),
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          flex: 2,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_rounded,
              size: 32,
            ),
            style: IconButton.styleFrom(
              foregroundColor: const Color(0xFF194FE3),
              backgroundColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        )
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: SvgPicture.asset(
        'assets/logo.svg',
      ),
      title: const Text(
        'My Appointments',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      actions: [
        const SizedBox(width: 16),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_circle_outline,
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
