import 'package:flutter/material.dart';

import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_assets.dart';
import 'package:places/ui/res/app_strings.dart';
import 'package:places/ui/res/app_typography.dart';
import 'package:places/ui/widgets/chevrone_back.dart';
import 'package:places/ui/widgets/sight_details_image.dart';
import 'package:places/ui/widgets/sight_icons.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;
  const SightDetails({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SightDetailsImage(
                  sight: sight,
                  height: 361,
                ),
                const Positioned(
                  left: 16,
                  top: 36,
                  child: ChevroneBack(
                    width: 32,
                    height: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.name,
                    style: AppTypography.sightDetailsTitle,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: AppTypography.sightDetailsSubtitle,
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'закрыто до 09:00',
                        style: AppTypography.sightDetailsSubtitleWithTime,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _DetailsScreenDescription(sight: sight),
                  const SizedBox(height: 24),
                  _SightDetailsBuildRouteBtn(sight: sight),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 8),
                  const _SightDetailsBottom(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  class _SightDetailsBottom extends StatelessWidget {
  const _SightDetailsBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Row(
            children: const [
              SizedBox(
                width: 17,
              ),
              SightIcons(
                assetName: AppAssets.calendar,
                width: 22,
                height: 19,
              ),
              SizedBox(width: 9),
              Text(
                AppString.schedule,
                style: AppTypography.inactiveButtonColor,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: const [
              SightIcons(
                assetName: AppAssets.favouriteDark,
                width: 20,
                height: 18,
              ),
              SizedBox(width: 9),
              Text(
                AppString.favourite,
                style: AppTypography.activeButtonColor,
              ),
              SizedBox(
                width: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailsScreenDescription extends StatelessWidget {
  final Sight sight;
  const _DetailsScreenDescription({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        sight.details,
        style: AppTypography.sightDetailsDescription,
      ),
    );
  }
}

class _SightDetailsBuildRouteBtn extends StatelessWidget {
  final Sight sight;
  const _SightDetailsBuildRouteBtn({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromRGBO(76, 175, 80, 1),
        ),
        child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SightIcons(
                assetName: AppAssets.goIcon,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8),
              Text(
                AppString.goButtonTitle.toUpperCase(),
                style: AppTypography.sightDetailsButtonName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}