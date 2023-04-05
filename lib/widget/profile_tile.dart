import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String image;
  final IconData icon;
  final String name;
  final String description;
  final String time;
  final IconData trailingIcon;
  const ProfileTile({
    super.key,
    required this.image,
    required this.icon,
    required this.name,
    required this.description,
    required this.time,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: 80,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image)),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                    color: Color(0xFF194FE3),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(8)),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      description,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Scheduled',
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ],
                ),
                Text(time, style: const TextStyle(fontSize: 12))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                trailingIcon,
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
      ),
    );
  }
}
