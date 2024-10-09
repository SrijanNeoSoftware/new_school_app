import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/string_constants.dart';
import 'package:st_joseph_school/constants/ui_constants.dart';
import 'package:st_joseph_school/screens/photo_gallery_screen/components/photo_gallery_builder.dart';
import 'package:st_joseph_school/utils/ui_helper.dart';

class PhotoGalleryScreen extends StatelessWidget {
  const PhotoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: UIConstants.screenMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UIHelper.verticalSpaceMedium(context),
            Text(
              AppStrings.photoGallery,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            UIHelper.verticalSpaceTiny(context),
            Text(
              "241 Albums | 21337 Photos | 150 Videos",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            UIHelper.verticalSpaceSmall(context),
            Expanded(child: PhotoGalleryBuilder()),
            UIHelper.verticalSpaceTiny(context),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(AppStrings.editAlbum)),
                ),
                UIHelper.horizontalSpaceSmall(context),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(AppStrings.viewAlbum)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
