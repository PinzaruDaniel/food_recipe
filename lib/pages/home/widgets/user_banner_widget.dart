import 'package:flutter/material.dart';

class UserBannerWidget extends StatelessWidget {
  final String name;
  const UserBannerWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30,bottom: 120),
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hello, $name',
                              style : const TextStyle(
                                fontSize: 36, fontWeight: FontWeight.bold
                              )
                            ),
                            const SizedBox(height: 4),
                            Text('What do you want to cook today?',
                              style: TextStyle(color: Colors.grey, fontSize: 14)),
                          ],
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.black,
                            child: Transform.translate(
                              offset: const Offset(-3, 3), // Move 4 pixels down
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 54,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
