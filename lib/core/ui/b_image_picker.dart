// import 'dart:ffi';
import 'dart:io';

// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../helpers/styles.dart';

class BImagePicker extends StatefulWidget {
  const BImagePicker({
    Key? key,
    required this.onSelectImage,
    required this.size,
    required this.info,
  }) : super(key: key);
  final Function(String imagePath) onSelectImage;
  final double size;
  final String info;

  @override
  State<BImagePicker> createState() => _BImagePickerState();
}

class _BImagePickerState extends State<BImagePicker> {
  String? imagePath = '';

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () async {
          // FilePickerResult? result = await FilePicker.platform.pickFiles();
          // imagePath = result?.files.single.path;
          // widget.onSelectImage(imagePath ?? '');
          setState(() {});
        },
        child: Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: S.primary(context).withOpacity(.025),
            border: Border.all(color: S.activeTextColor100(context)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imagePath?.isNotEmpty ?? false
                  ? SizedBox(
                      width: widget.size / 2,
                      height: widget.size / 2,
                      child: Image.file(
                        File(imagePath!),
                        fit: BoxFit.contain,
                      ),
                    )
                  : Icon(
                      Iconsax.gallery,
                      size: widget.size / 2,
                      color: S.activeTextColor100(context),
                    ),
              if (widget.size > 190) const SizedBox(height: 16),
              if (widget.size > 190) Divider(indent: 4.h, endIndent: 4.h),
              const SizedBox(height: 16),
              Text(
                widget.info,
                style: S
                    .t(context)
                    .bodyText1!
                    .copyWith(color: S.activeTextColor600(context)),
              ),
            ],
          ),
        ),
      );
}
