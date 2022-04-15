import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../asset_locations.dart';

class AccountEditTile extends StatelessWidget {
  final String svgIcon, value, lable;
  final bool isEditable;
  final void Function(String)? onChanged;
  final void Function()? changeEditability;
  final String? Function(String?)? validator;
  const AccountEditTile(
      {Key? key,
      required this.svgIcon,
      required this.value,
      required this.lable,
      this.isEditable = true,
      this.onChanged,
      this.changeEditability,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: TextFormField(
            validator: validator,
            enabled: isEditable,
            initialValue: value,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: !isEditable ? InputBorder.none : null,
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SvgPicture.asset(svgIcon, width: 40),
              ),
              label: Text(lable),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: changeEditability,
            icon: Icon(
              Icons.edit,
              color:
                  isEditable ? Colors.blue : theme.appBarTheme.backgroundColor,
            )),
      ],
    );
  }
}
