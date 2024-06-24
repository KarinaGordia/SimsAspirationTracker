import 'package:achievements/achievements_page/filter_menu/expansion_pack_model.dart';
import 'package:flutter/material.dart';

class ExpansionPackButton extends StatelessWidget {
  ExpansionPackButton({
    super.key,
    required this.pack,
    this.onTap,
    this.isToggled,
  });

  final ExpansionPackModel pack;
  final Function? onTap;
  bool? isToggled;

  WidgetStateProperty<CircleBorder>? _selectBorder() {
    if(isToggled != null) {
      if(isToggled!) {
        return WidgetStateProperty.all(
          CircleBorder(
            side: BorderSide(
              width: 2.0,
              color: Colors.deepPurple[500]!,
            ),
          ),
        );
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 83,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: () {
              if(onTap != null) {
                onTap!();
              }
            },
            clipBehavior: Clip.hardEdge,
            label: pack.image,
            style: ButtonStyle(
              fixedSize: WidgetStateProperty.all(
                const Size.fromRadius(35),
              ),
              overlayColor: WidgetStateProperty.all(Colors.black12),
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              padding: WidgetStateProperty.all(EdgeInsets.zero),
              shape: _selectBorder(),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            maxLines: 2,
            pack.name,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}