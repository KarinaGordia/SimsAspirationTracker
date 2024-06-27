import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, this.onTap, required this.text});

  final Function? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: (){
          if(onTap != null) {
            onTap!();
          }
        },
        style: ButtonStyle(minimumSize: WidgetStateProperty.all(const Size(200, 50)),),
        child: Text(text, style: const TextStyle(fontSize: 16),),
      ),
    );
  }
}