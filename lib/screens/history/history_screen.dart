import 'package:doctorq_clone/controller/history_tile.controller.dart';
import 'package:doctorq_clone/widget/history_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _currentIndex = 0;
  final HistoryTileController _controller = HistoryTileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: const Text('Chat'),
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
                    child: const Text('Voice Call'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: _currentIndex == 2
                          ? const Color(0xFF194FE3)
                          : Colors.white,
                      foregroundColor: _currentIndex == 2
                          ? Colors.white
                          : const Color(0xFF194FE3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                        side: const BorderSide(color: Color(0xFF194FE3)),
                      ),
                    ),
                    child: const Text('Video Call'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            searchFilterTab(),
            const SizedBox(height: 20),
            const Text('Today'),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _controller.historyTileList.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: HistoryTile(
                            image: _controller.historyTileList[index].image,
                            name: _controller.historyTileList[index].name,
                            description:
                                _controller.historyTileList[index].description,
                            time: _controller.historyTileList[index].time,
                          ),
                        );
                      },
                    ),
                    const Text('Yesterday, 03 Apr 2023'),
                    const SizedBox(height: 20),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _controller.historyTileList.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: HistoryTile(
                            image: _controller.historyTileList[index].image,
                            name: _controller.historyTileList[index].name,
                            description:
                                _controller.historyTileList[index].description,
                            time: _controller.historyTileList[index].time,
                          ),
                        );
                      },
                    ),
                  ],
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 310,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(128),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
                hintText: 'Search',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.search, size: 32),
                  ),
                )),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.filter_alt_rounded,
            size: 38,
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
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: SvgPicture.asset(
        'assets/logo.svg',
      ),
      title: const Text(
        'History',
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
