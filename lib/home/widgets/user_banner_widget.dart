import 'package:flutter/material.dart';

class UserBannerWidget extends StatelessWidget {
  final String name;
  const UserBannerWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello, $name',
                            style : const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold
                            )
                          ),
                          const SizedBox(height: 4),
                          Text('What do you want to cook today?',
                            style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        child: const Icon(Icons.person, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
    );
  }
}
