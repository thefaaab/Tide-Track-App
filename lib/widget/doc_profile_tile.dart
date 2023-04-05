import 'package:flutter/material.dart';

class DocProfileTile extends StatelessWidget {
  const DocProfileTile({
    super.key,
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
        children: [
          Container(
            width: 80,
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/dr4.jpg')),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dr.Tiffany Rogers',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.amber[700],
                          ),
                          const SizedBox(width: 2),
                          const Text(
                            '4.8 (2654 reviews)',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      const Text('Eye Specialist, Nanyang Hospital',
                          style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
