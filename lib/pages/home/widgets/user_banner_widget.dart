import 'package:flutter/material.dart';

class UserBannerWidget extends StatelessWidget {
  final String name;
  const UserBannerWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30,bottom: 120, left: 24, right: 24),
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hello, $name',
                              style : const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600,
                              )
                            ),
                            const SizedBox(height: 4),
                            Text('What do you want to cook today?',
                              style: TextStyle(color: Colors.grey, fontSize: 13)),
                          ],
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.black,
                            child: Transform.translate(
                              offset: const Offset(-3, 3),
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 50,
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
