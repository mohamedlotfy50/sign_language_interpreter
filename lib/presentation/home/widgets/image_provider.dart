import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../asset_locations.dart';

ImageProvider getImage({File? imagePath, required String url}) {
  if (imagePath != null) {
    return FileImage(imagePath);
  } else if (url.isNotEmpty) {
    return CachedNetworkImageProvider(
      url,
    );
  } else {
    return const AssetImage(AssetLocations.unknownAvatar);
  }
}
