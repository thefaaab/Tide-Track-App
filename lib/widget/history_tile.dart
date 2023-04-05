import 'package:flutter/material.dart';

class HistoryTile extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String time;

  const HistoryTile({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.time,
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
          SizedBox(
              height: 100,
              width: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CircleAvatar(
                    maxRadius: 45, backgroundImage: AssetImage(image)),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        description,
                        style: const TextStyle(fontSize: 12),
                      ),
                      Text(time, style: const TextStyle(fontSize: 12))
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
