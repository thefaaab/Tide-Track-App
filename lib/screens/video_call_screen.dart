import 'package:flutter/material.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.cameraswitch_outlined,
              color: Colors.black54,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 140.0),
              child: Center(
                child: CircleAvatar(
                  maxRadius: 100,
                  backgroundImage: AssetImage('assets/dr4.jpg'),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Dr.Tiffany Rogers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              'Ringing ...',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white,
                  maxRadius: 32,
                  child: Icon(
                    Icons.videocam_off_outlined,
                    size: 28,
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white,
                  maxRadius: 32,
                  child: Icon(
                    Icons.mic_none_outlined,
                    size: 28,
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white,
                  maxRadius: 32,
                  child: Icon(
                    Icons.volume_up_outlined,
                    size: 28,
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white,
                  maxRadius: 32,
                  child: Icon(
                    Icons.flip_camera_android,
                    size: 28,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    // context.navigator(const HomeScreen());
                  },
                  child: CircleAvatar(
                    maxRadius: 32,
                    backgroundColor: Colors.red.shade600,
                    foregroundColor: Colors.white,
                    child: const Icon(
                      Icons.call_end_outlined,
                      size: 28,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
