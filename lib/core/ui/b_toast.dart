import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class BToast {
  static Widget _toastWidget(String? msg, Color color) => Material(
        child: Container(
          constraints: const BoxConstraints(minWidth: 180),
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 5),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Icon(
              //   Icons.density_large_sharp,
              //   color: Colors.white,
              //   size: 17,
              // ),
              // const SizedBox(width: 6),
              Text(
                msg ?? 'خطایی رخ داد!',
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      );

  static error(String msg) => showToastWidget(
        _toastWidget(msg, Colors.blue.shade800),
        position: ToastPosition.top,
      );

  static success(String msg) => showToastWidget(
        _toastWidget(msg, Colors.blue.shade800),
        position: ToastPosition.top,
      );
}
