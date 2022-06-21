import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(subtitle,
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: Theme.of(context).textTheme.subtitle2),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.accountName,
  }) : super(key: key);

  final String accountName;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(accountName,
              overflow: TextOverflow.fade,
              maxLines: 1,
              softWrap: false,
              style: Theme.of(context).textTheme.subtitle1),
        ));
  }
}
