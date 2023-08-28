
import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';

Widget tile ({required Data? data}){
  return  Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      Container(
        margin:
        const EdgeInsets.only(left: 20, right: 20),
        padding: const EdgeInsets.only(left: 20),
        height: 90,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(data!.avatar!),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.firstName?.toUpperCase() ?? '',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  data.lastName ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  data.email ?? '',
                  style: const TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}