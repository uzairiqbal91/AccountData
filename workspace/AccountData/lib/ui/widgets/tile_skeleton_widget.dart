import 'package:flutter/cupertino.dart';

import '../../app_resources/app_colors.dart';
import '../../app_resources/app_constants.dart';
import '../views/dashboad_view.dart';
import 'custom_card_widget.dart';

class TileSkeletonWidget extends StatelessWidget {
  bool isListView;

  TileSkeletonWidget({Key? key, this.isListView = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(

        crossAxisCount: isListView ? 1 : 2,
        crossAxisSpacing: AppConstant.GRIDCROSSAXISSPACING,
        childAspectRatio: isListView ? AppConstant.ASPECTRATIONLIST : AppConstant.ASPECTRATIONGRID,
        mainAxisSpacing: AppConstant.MAINAXISSPACING,
        children: List.generate(6, (index) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            switchOutCurve: Curves.easeInBack,
            child: CustomCardWidget(
                color: AppColors.PRIMARY_COLOR,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: isListView
                        ? TileListContentSkeletonListViewWidget()
                        : TileListContentSkeletonGridViewWidget())),
          );
        }));
  }
}

class TileListContentSkeletonListViewWidget extends StatelessWidget {
  const TileListContentSkeletonListViewWidget(
      {Key? key, this.isEndItem = false})
      : super(key: key);
  final bool isEndItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child:
            Container(color: AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                        color: AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                              color:
                              AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Container(
                              color:
                              AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TileListContentSkeletonGridViewWidget extends StatelessWidget {
  const TileListContentSkeletonGridViewWidget(
      {Key? key, this.isEndItem = false})
      : super(key: key);
  final bool isEndItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child:
            Container(color: AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                        color: AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                              color:
                              AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Container(
                              color:
                              AppColors.SHIMMERGREYCOLOR.withOpacity(0.3)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}