import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/ui_constants.dart';

class PhotoGalleryBuilder extends StatelessWidget {
  const PhotoGalleryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        GridPhotoBuilder(
          photoUrl: UIConstants.image1,
        ),
        GridPhotoBuilder(
          photoUrl: UIConstants.image2,
        ),
        GridPhotoBuilder(
          photoUrl: UIConstants.image3,
        ),
        GridPhotoBuilder(
          photoUrl: UIConstants.image4,
        ),
        GridPhotoBuilder(
          photoUrl: UIConstants.image5,
        ),
        GridPhotoBuilder(
          photoUrl: UIConstants.image6,
        ),
        GridPhotoBuilder(
          photoUrl: UIConstants.image7,
        ),
      ],
    );
  }
}

class GridPhotoBuilder extends StatelessWidget {
  final String photoUrl;
  const GridPhotoBuilder({
    super.key,
    required this.photoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        photoUrl,
        fit: BoxFit.fitWidth,
        height: 140,
        width: 140,
      ),
    );
  }
}
